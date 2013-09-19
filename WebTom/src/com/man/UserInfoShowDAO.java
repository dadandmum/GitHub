package com.man;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.UserInfo;

public class UserInfoShowDAO {
	
	private UserInfo userInfo;
	private ArrayList<String> head = new ArrayList();
	private ArrayList<String> context = new ArrayList();
	private Iterator<String> headIterator;
	private Iterator<String> contextIterator;
	private String temHead;
	private String temContent;
	
	public void setUserInfo( UserInfo userInfo )
	{
		this.userInfo = userInfo;
		head.add("User Name");
		head.add("Sex");
		head.add("Age");
		head.add("Real Name");
		head.add("Email");
		head.add("Hobby");
		
		context.add(userInfo.getUserName());
		context.add(userInfo.getSex());
		context.add(userInfo.getAge().toString());
		context.add(userInfo.getRealName());
		context.add(userInfo.getEmail());
		context.add(userInfo.getHobby());
		
		headIterator= head.iterator();
		contextIterator =context.iterator();
	}
	
	public boolean hasNext(){
		
		while(contextIterator.hasNext()	)
		{
			temContent = contextIterator.next();
			temHead = headIterator.next();
			if ( temContent == null || temContent == "" || temContent.equals("0") )
				continue;
			return true;
		}
		return false;
	}
	public String getHead(){
		return temHead;
	}
	public String getContent(){
		return temContent;
	}
	
	public static void main(String[] args) {

		UserInfo userInfo = new UserInfo();
		userInfo.setUserName("haha");
		userInfo.setSex("male");
		userInfo.setRealName("");
		userInfo.setEmail("new_146675@163.com");
		userInfo.setHobby("");
		
		UserInfoShowDAO userInfoShowDAO = new UserInfoShowDAO();
		userInfoShowDAO.setUserInfo(userInfo);
		while(userInfoShowDAO.hasNext())
		{
			System.out.println(userInfoShowDAO.getHead() +" "+ userInfoShowDAO.getContent());
		}
	}
}
