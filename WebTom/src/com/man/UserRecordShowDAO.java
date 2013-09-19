package com.man;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.omg.CORBA.PUBLIC_MEMBER;

import sun.launcher.resources.launcher;

import com.UserRecord;
import com.UserRecordUtil;
import com.opensymphony.xwork2.ActionSupport;

public class UserRecordShowDAO extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5077847860458116960L;

	public final static int maxItem = 7;
	
	ArrayList userRecordList = new ArrayList();
	
	public final static String SPLIT_STRING = "X";
	public final static String SPLIT_BIG_STRING = "@";
	
	void setRecord( Integer pageInteger , String delete ){
		if ( delete == null || delete == "" )
		{
			
		}
	}
	
	
	public String getRecord(String userName , Integer pageInteger , String delete , String startDate , String endDate){
		if ( userName == null || userName.length() < 1 )
			return "";
		if ( pageInteger == null )
			pageInteger = 0;
		//get all User Record and save
		setAllRecord(userName);
		//deal with the delete require
		if ( deleteRecord( pageInteger , delete ) )
			//if delete some records, then reset the record
			setAllRecord(userName);
		//deal with date search
		selectFromDate( startDate , endDate );
		//change the user record to string
		//if page Integer <0 then select all items
		if ( pageInteger >= 0 )
			selectFromPage( pageInteger );
		
		return getRecordToString();
	}
	
	public  String getImageRecord( String userName , Integer pageInteger )
	{
		setAllRecord(userName);
		selectFromImage();
		selectFromPage(pageInteger);
		return getImageRecordToString();
	}
	
	public void setAllRecord(String userName ){
		UserRecordUtil userRecordUtil = new UserRecordUtil();
		userRecordList = (ArrayList) userRecordUtil.getUserRecordList(userName);
		
	}
	
	public boolean deleteRecord( Integer pageInteger , String delete ){
		if ( delete == null || delete.length()<1)
			return false;
		String deleteNumberString[] = delete.split(SPLIT_STRING);
		//SHOULD TEST !!!! IF IGNORE THE LAST ITEM
		//int deleteNumberInteger[] = new int[deleteNumberString.length-1];
		ArrayList<UserRecord> deleteRecord = new ArrayList<>();
		
		for ( int i = 0 ; i< deleteNumberString.length ; ++ i )
		{
			if ( deleteNumberString[i] != null && deleteNumberString[i] != "")
			{
				int k = Integer.parseInt(deleteNumberString[i]);
				k += pageInteger.intValue() * maxItem;
				UserRecord userRecord = (UserRecord)userRecordList.get(k);
				deleteRecord.add(userRecord);
			}
			//deleteNumberInteger[i]= Integer.parseInt(deleteNumberString[i]);
			
		}
		
		UserRecordUtil uru = new UserRecordUtil();
		
		for( int i = 0 ; i < deleteRecord.size() ; ++i )
			uru.deleteUserRecord(deleteRecord.get(i));

		
		return true;
	}

	public void selectFromDate( String startDate , String endDate){
		Pattern half=Pattern.compile("\\d{4}/\\d{2}/\\d{2}\\s*"); 
		Pattern whole=Pattern.compile("\\d{4}/\\d{2}/\\d{2}\\s*\\d{2}:\\d{2}:\\d{2}");
		if ( startDate == null )
			startDate = "";
		if ( endDate == null )
			endDate = "";
		Matcher match = whole.matcher(startDate);
		if ( !match.find() ){
			match = half.matcher(startDate);
			if ( match.find() )
				startDate = match.group() + " 00:00:00";
			else {
				startDate = "0000/00/00 00:00:00";
			}
		}
		match = whole.matcher(endDate);
		if ( !match.find() ){
			match = half.matcher(endDate);
			if ( match.find() )
				endDate = match.group() +  " 23:59:59";
			else {
				endDate = "9999/99/99 23:59:59";
			}
		}
		
		ArrayList temUserRecordList = new ArrayList<>();
		for( int i = 0 ;  i < userRecordList.size() ; ++i )
		{
			UserRecord userR = (UserRecord)userRecordList.get(i);
			String time = userR.getTime();
			if ( userR.getTime().compareTo(startDate) >= 0 
					&& userR.getTime().compareTo(endDate) <= 0  )
				temUserRecordList.add(userRecordList.get(i));
		}
		
		userRecordList = temUserRecordList;
		
	}
	
	public void selectFromPage( Integer pageInteger ){
		//select the record to show for this page
		ArrayList recordList = new ArrayList<>();
		for( int i = pageInteger.intValue() * maxItem ; 
				i < ( pageInteger.intValue() + 1 ) * maxItem;
				++i)
		{
			if ( i < userRecordList.size() )
			{
					recordList.add((UserRecord)userRecordList.get(i));
			}
		}
		userRecordList = recordList;
	}
	
	public String getRecordToString(){
		String res="";
		//select the record to show for this page
		for( int i = 0 ; i < userRecordList.size() ; ++i )
		{
				UserRecord userR = (UserRecord)userRecordList.get(i);
				res += userR.getTime()+SPLIT_STRING;
				res += userR.getLocation()+SPLIT_STRING;
				res += userR.getWifi()+SPLIT_STRING;
				res += userR.getIlluminate()+SPLIT_STRING;
				res += userR.getHumidity()+SPLIT_STRING;
				res += userR.getPM25()	+SPLIT_STRING;
				res += userR.getDescription()+" ";
				res += SPLIT_BIG_STRING;

		}
		return res;
		
	}
	
	public void selectFromImage(){
		//select the record to show for this page
		ArrayList recordList = new ArrayList<>();
		for( int i = 0 ; i <  userRecordList.size(); ++i)
		{
			UserRecord userRecord= (UserRecord)userRecordList.get(i);
			if ( userRecord.getImage()!= null && userRecord.getImage().length()>0)
			{
				recordList.add(userRecord);
			}
		}
		userRecordList = recordList;
		
	}
	
	public String getImageRecordToString(){
		String res="";
		//select the record to show for this page
		for( int i = 0 ; i < userRecordList.size() ; ++i )
		{
				UserRecord userR = (UserRecord)userRecordList.get(i);
				res += userR.getTime()+SPLIT_STRING;
				res += userR.getLocation()+SPLIT_STRING;
				res += userR.getWifi()+SPLIT_STRING;
				res += userR.getIlluminate()+SPLIT_STRING;
				res += userR.getHumidity()+SPLIT_STRING;
				res += userR.getTemperature()	+SPLIT_STRING;
				res += userR.getImage()+SPLIT_STRING;
				res += userR.getDescription()+SPLIT_STRING;
				res += SPLIT_BIG_STRING;

		}
		return res;
		
	}
	
	public void setImageRecord(String userName , Integer pageInteger , String description , String index){
		if ( description == null || index == null )
			return;
		Integer indexInteger = Integer.parseInt(index);
		if ( indexInteger < 0 )
			return ;

		setAllRecord(userName);
		selectFromImage();
		if ( ( pageInteger * maxItem + indexInteger) >= userRecordList.size()  )
			return ;
		UserRecord userRecord = (UserRecord)userRecordList.get((int)(pageInteger * maxItem + indexInteger));
		userRecord.setDescription(description);
		UserRecordUtil userRecordUtil = new UserRecordUtil();
		userRecordUtil.updateUser(userRecord);
		
	}
	
	
	public String getHead()
	{
		String res = "";
		//res += "UserName" + SPLIT_STRING;
		res += "Time"+SPLIT_STRING;
		res += "Location"+SPLIT_STRING;
		res += "Wifi"+SPLIT_STRING;
		res += "Illumination"+SPLIT_STRING;
		res += "Humidity"+SPLIT_STRING;
		res += "Weather"+SPLIT_STRING;
		res += "Pick";
		
		return res;
	}
	
	public static void main(String[] args) {
		UserRecordShowDAO urs = new UserRecordShowDAO();
		
		UserRecordUtil uru = new UserRecordUtil();

		ArrayList<UserRecord> list = (ArrayList<UserRecord>)uru.getUserList();
		for( int i = 0 ; i < list.size() ; ++ i )
			System.out.println(list.get(i).toString());
		System.out.println(uru.getUserRecordList("dadandmum"));
		System.out.println(urs.getImageRecord("dadandmum",0));

	}
	
	
}
