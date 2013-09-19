package com;

public class UserBase {
	//ID
	Long ID = new Long(0);
	//Key Value
	String userName=""; 	//not null limit in CHAR(50)
	String password=""; 	//not null limit in CHAR(50)
	
	public UserBase(){}
	public UserBase( String userName , String password ){
		//ID = id;
		this.userName = userName;
		this.password = password;
		
	}
	private void setID( Long i){
		this.ID = i;
	}
	public void setUserName( String userName ){
		this.userName = userName;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Long getID(){
		return this.ID;
	}
	public String getUserName(){
		return userName;
	}
	public String getPassword() {
		return password;
	}
	
	@Override
	public String toString(){
		String res = "";
		res += ID.toString();
		res += " " + userName;
		res += " " + password;
		return res;
	}
}
