package com;

import java.util.Iterator;
import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;


public class UserInfoUtil extends AbstractUserUtil implements UserUtilStrategy {

	UserInfo userInfo = null;
	public UserInfoUtil(){}
	public UserInfoUtil(UserInfo ui){
		userInfo = ui;
	}
	public void setUserInfo( UserInfo userInfo){
		this.userInfo = userInfo;
	}
	
	@Override
	public List getUserList() {
		return getUserList("from UserInfo");
	}
	
	public UserInfo getUserInfo( String userName ){
		List list = getUserList("from UserInfo as u where u.userName = \'" + userName +"\'");
		if ( list.size() > 0 )
			return (UserInfo)list.iterator().next();
		userInfo = new UserInfo();
		userInfo.setUserName(userName);
		insert();
		return userInfo;
	}

	@Override
	public void insert(Object user) {
		setUserInfo((UserInfo)user);
		insert();
	}
	
	public void insert( String userName , String gravatar, String sex , Integer age , String realName , String email , String hobby)
	{
		userInfo = new UserInfo();
		userInfo.setUserName(userName);
		userInfo.setGravatar(gravatar);
		userInfo.setAge(age);
		userInfo.setSex(sex);
		userInfo.setRealName(realName);
		userInfo.setEmail(email);
		userInfo.setHobby(hobby);
		insert(userInfo);
	}

	public void insert( ) {
		if ( userInfo == null )
		{
			System.out.println("No UserInfo found");
			return;
		}
		List list = getUserByName("UserInfo", userInfo.getUserName());
		if  (list.size() < 1 )
			saveUser(userInfo);
		else {
			UserInfo ui = (UserInfo)list.iterator().next();
			userInfo.setID(ui.getID());
			updateUser(userInfo);
		}
		
	}
	
	public void update( UserInfo user)
	{
		userInfo = user;
		insert();
	}
	public void update( String userName , String gravatar, String sex , Integer age , String realName , String email , String hobby)
	{
		
		insert(userName,gravatar,sex,age,realName,email,hobby);
	}
	
	@Override
	public Query getStrategy(Session session) {
		return null;
	}
	public static void main(String[] args) {
		System.out.println("UserInfotest");
		UserInfo userInfo = new UserInfo();
		userInfo.setUserName("haha");
		userInfo.setSex("male");
		userInfo.setRealName("DengJDDDDDDDD");
		userInfo.setEmail("new_146675@163.com");
		userInfo.setHobby("");
		System.out.println(userInfo.toString());
		
		UserInfoUtil uiu = new UserInfoUtil(userInfo);
		//uiu.saveUser(userInfo);
		userInfo = uiu.getUserInfo(userInfo.getUserName());
		userInfo.setEmail("lalaalla@555.com");
		userInfo.setHobby("jogging");
		uiu.update(userInfo);
		
		
		List list = uiu.getUserList();
		Iterator it = list.iterator();
		while(it.hasNext() ){
			System.out.println(((UserInfo)it.next()).toString());
		}
	}
	
}
