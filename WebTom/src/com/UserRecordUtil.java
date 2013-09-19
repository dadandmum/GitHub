package com;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import com.sun.org.apache.bcel.internal.generic.NEW;

public class UserRecordUtil extends AbstractUserUtil {

	private UserRecord userRecord;
	
	public UserRecordUtil(){}
	
	@Override
	public List getUserList() {

		return getUserList("from UserRecord");
	}

	@Override
	public void insert(Object user) {
		saveUserRecord(userRecord);
	}
	
	public void saveUserRecord( UserRecord userRecord)
	{
		saveUser(userRecord);
	}
	
	public List getUserRecordList( String userName ){
		return getUserList("from UserRecord as u where u.userName=\'" + userName +"\'");
		
	}
	
	public void deleteUserRecord( UserRecord userRecord )
	{
		setUser("delete UserRecord as u where u.ID =\'"+userRecord.getID().toString()+"\'");
	}
	
	public static void main(String[] args) {
		System.out.println("URU Test");  
		UserRecord userRecord = new UserRecord("dadandmum","");
		userRecord.setLocation("40.01,116.31");
		userRecord.setTemperature("15-17");
		userRecord.setWifi("ABCDE");
		userRecord.setHumidity("12345");
		userRecord.setIlluminate("9876");
		userRecord.setPM25("15.796");
		userRecord.setImage("e.jpg");
		userRecord.setDescription("hahaha");
		
		
		UserRecordUtil userRecordUtil = new UserRecordUtil();
		//List list = userRecordUtil.getUserList();
		//Iterator it = list.iterator();
		for( int i = 0 ; i < 1 ; ++ i ){
			//UserRecord userR = (UserRecord)it.next();
			UserRecord userR = new UserRecord();
			userR.setUserName("dadandmum");
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
			String date = dateFormat.format( new Date(System.currentTimeMillis()) ); 
			userR.setTime(date);
			Double px = Math.random()*120.0-60.0;
			Double py = Math.random()*120.0;
			userR.setLocation(px.toString()+","+py.toString());
			Double t_low = Math.random() * 30 -10;
			Double t_high = Math.random() * 30 ;
			userR.setTemperature(t_low.toString()+"-"+t_high.toString());
			Double wifi = Math.random() * 5 ;
			userR.setWifi(wifi.toString());
			Double illuminate = Math.random()*20;
			userR.setIlluminate(illuminate.toString());
			Double hum = Math.random() * 20 + 15;
			userR.setHumidity(hum.toString());
			userRecord.setImage("e.jpg");
			userRecordUtil.saveUserRecord(userR);
			
			
			
			
			System.out.println((userR).toString());
		}
		
	}
	
	
}
