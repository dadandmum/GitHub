package action;

import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport{
	private String userName;
	public String getUserName(){
		return this.userName;
	}
	public void setUserName( String un ){
		this.userName = un;
	}
	
	public String execute(){
		
		
		
		return "success";
	}
}
