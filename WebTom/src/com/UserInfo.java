package com;

public class UserInfo {
	//ID
	Long ID = new Long(0);
	//Key Value
	String userName=""; 	//not null limit in CHAR(50)
	String password=""; 	//not null limit in CHAR(50)
	//info data
	String gravatar="no";

	String sex="";			//limit in CHAR(50)
	Integer age=0;		//limit in CHAR(50)
	String realName=""; 	//limit in CHAR(50)
	String email="";	 	//limit in CHAR(50)
	String hobby="";		//limit in CHAR(50)
	
	public UserInfo(){}
	/*public UserInfo( String userName , String password ){
		//ID = id;
		this.userName = userName;
		this.password = password;
		
	}
	
	public UserInfo( String userName,
			String password,
			String grava
			String sex ,
			Integer age,
			String realName,
			String email,
			String hobby )
	{
		//this.ID = id;
		this.userName = userName;
		this.password = password;
		this.sex = sex;
		this.age = age;
		this.realName = realName;
		this.email = email;
		this.hobby = hobby;
	}*/
	
	public void setID( Long i){
		this.ID = i;
	}
	public void setUserName( String userName ){
		this.userName = userName;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setGravatar(String gravatar) {
		this.gravatar = gravatar;
	}
	public void setSex( String sex ) {
		this.sex = sex;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
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
	public String getGravatar() {
		return gravatar;
	}
	public String getSex() {
		return sex;
	}
	public Integer getAge(){
		return age;
	}
	public String getRealName() {
		return realName;
	}
	public String getEmail(){
		return email;
	}
	public String getHobby(){
		return hobby;
	}
	
	@Override
	public String toString(){
		String res = "";
		res += ID.toString();
		res += " " + userName;
		res += " " + password;
		res += " " + sex;
		res += " " + age.toString();
		res += " " + realName;
		res += " " + email;
		res += " " + hobby;
		return res;
	}
}
