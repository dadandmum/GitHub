package com;


public class UserRecord {
	//ID
	Long ID ;
	//Key Value
	String userName=""; 	//not null limit in CHAR(50)
	String time="";		//not null limit in CHAR(50)
	//info data
	//location data
	String location="";	//limit in CHAR(50)
	String wifi="";		//limit in CHAR(50)
	//image
	String image="";		//limit in CHAR(50)
	//voice
	String record="";		//limit in CHAR(50)
	//description
	String description="";	//limit in CHAR(200)
	//environment
	String illuminate="";	//limit in CHAR(50)
	String temperature="";	//limit in CHAR(50)
	String PM25="";		//LIMIT IN CHAR(50)
	String humidity="";	//limit in CHAR(50)
	
	
	public UserRecord(){}
	public UserRecord( String un , String t){
		this.userName = un;
		this.time =t;
	}
	public UserRecord( String un,
			String t,
			String loca,
			String wifi,
			String img,
			String rec,
			String des,
			String illu,
			String temp,
			String pm,
			String hum)
	{
		this.userName = un;
		this.location = loca;
		this.wifi = wifi;
		this.image = img;
		this.record = rec;
		this.description = des;
		this.illuminate = illu;
		this.temperature = temp;
		this.PM25 = pm;
		this.humidity = hum;
	}


	
	public Long getID() {
		return ID;
	}
	public void setID(Long iD) {
		ID = iD;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getWifi() {
		return wifi;
	}
	public void setWifi(String wifi) {
		this.wifi = wifi;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getRecord() {
		return record;
	}
	public void setRecord(String record) {
		this.record = record;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getIlluminate() {
		return illuminate;
	}
	public void setIlluminate(String illuminate) {
		this.illuminate = illuminate;
	}
	public String getTemperature() {
		return temperature;
	}
	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}
	public String getPM25() {
		return PM25;
	}
	public void setPM25(String pM25) {
		PM25 = pM25;
	}
	public String getHumidity() {
		return humidity;
	}
	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}
	@Override
	public String toString(){
		return userName + " " + time + " " + location + " " + wifi;
	}
}
