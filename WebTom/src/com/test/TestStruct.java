package com.test;  
 
import com.opensymphony.xwork2.ActionSupport;  
 
 public class TestStruct extends ActionSupport {  
 
    private String name;  
 
  public String getName() {  
 
       return name;  
 
    }  
 
     public void setName(String name) {  
 
       this.name = name;  
 
    }  
 
      public String execute(){  
    	  name="Hello "+name+"!";  
    	  //System.out.println(name);  
    	  return SUCCESS;
    }  
 
}  
 