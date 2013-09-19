package com.login;

import java.util.Map;

import com.UserBaseUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Register  extends ActionSupport  {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4154943443653274187L;
	
	String userName;
	String password;
	String confirmPassword;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public Register(){
		
	}
	
	public String check(){
		
		UserBaseUtil ubu = new UserBaseUtil();
		if ( userName.equals(""))
			return "USERNAME_NULL";
		if ( ubu.checkUserName(userName) )
			return "SAME_USER_NAME";
		if ( !UserBaseUtil.ifPasswordRight(password) )
			return "PASSWORD_SHORT";
		if ( !password.equals(confirmPassword) )
			return "PASSWORD_UNCONFIRMED";
		ubu.insert(userName, confirmPassword);

		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		session.put("USER_NAME", userName);
		
		return "SUCCESS";
		
	}
	

}
