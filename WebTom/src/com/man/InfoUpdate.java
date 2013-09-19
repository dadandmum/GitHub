package com.man;

import java.util.Map;

import com.UserInfo;
import com.UserInfoUtil;
import com.UserBase;
import com.UserBaseUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class InfoUpdate extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3207275007082499315L;
	//key
	String userName=""; 
	//password
	String oldPassword=""; 		
	String newPassword=""; 	
	String confirmNewPassword=""; 
	//info data
	String sex="";			
	String age="";

	String realName=""; 	
	String email="";	 	
	String hobby="";
	String message="";
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getConfirmNewPassword() {
		return confirmNewPassword;
	}
	public void setConfirmNewPassword(String confirmNewPassword) {
		this.confirmNewPassword = confirmNewPassword;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age.toString();
	}	
	public void setAge(String age) {
		this.age = age;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}	
	
	public String update(){
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		String userName = (String)session.get("USER_NAME");
		
		if ( userName == null || userName == "" )
			return "ERROR";
		
		UserInfoUtil userInfoUtil = new UserInfoUtil();
		
		UserInfo userInfo = userInfoUtil.getUserInfo(userName);
		if ( userInfo == null )
			return "ERROR";

		if ( sex != null && sex.length()>1 ) userInfo.setSex(sex);
		if ( age != null && age.length() >0 ) userInfo.setAge(Integer.parseInt(age));
		if ( realName != null &&  realName.length()>1 ) userInfo.setRealName(realName);
		if ( email!= null && email.length()>1 ) userInfo.setEmail(email);
		if ( hobby!= null && hobby.length()>1) userInfo.setHobby(hobby);
		
		userInfoUtil.updateUser(userInfo);
		
		if ( newPassword  != null && newPassword.length()>1 ) //user require to change the password
		{
			if ( !UserBaseUtil.ifPasswordRight(newPassword) )
			{
				message = "New password is too short";
				return "FAIL";
			}
			if ( newPassword != confirmNewPassword )
			{
				message = "Make sure your comfirm/nis correct.";
				return "FAIL";
			}
			UserBaseUtil ubu = new UserBaseUtil();
			
			if ( ! ubu.checkPassword(userName, oldPassword ))
			{
				message = "Your old password is incorrect";
				return "FAIL";
			}
			
			ubu.update(userName, newPassword);
		}
		
		return "SUCCESS";
	}
	
}
