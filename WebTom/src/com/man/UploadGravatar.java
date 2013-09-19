package com.man;

import java.io.*;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UploadGravatar extends ActionSupport {

    /**
	 * 
	 */
	private static final long serialVersionUID = -5611452770960951664L;

	private static final int BUFFER_SIZE = 16 * 1024 ;
    
	File uploadFile;
	String uploadFileFileName;
	public String getUploadFileFileName() {
		return uploadFileFileName;
	}

	public void setUploadFileFileName(String uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
	}

	public String getUploadFileContentType() {
		return uploadFileContentType;
	}

	public void setUploadFileContentType(String uploadFileContentType) {
		this.uploadFileContentType = uploadFileContentType;
	}

	String uploadFileContentType;
	String fileName;
	
	private static void copy(File src, File dst) {
        try {
           InputStream in = null ;
           OutputStream out = null ;
            try {                
               in = new BufferedInputStream( new FileInputStream(src), BUFFER_SIZE);
               out = new BufferedOutputStream( new FileOutputStream(dst), BUFFER_SIZE);
                byte [] buffer = new byte [BUFFER_SIZE];
                while (in.read(buffer) > 0 ) {
                   out.write(buffer);
               } 
           } finally {
                if ( null != in) {
                   in.close();
               } 
                if ( null != out) {
                   out.close();
               } 
           } 
       } catch (Exception e) {
           e.printStackTrace();
       } 
   } 
	
	 private static String getExtention(String fileName) {
         int pos = fileName.lastIndexOf( "." );
         return fileName.substring(pos);
    } 
	
	public File getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String upload() throws IOException{
		ActionContext actionContext = ActionContext.getContext();
		Map session = actionContext.getSession();
		String userName = (String)session.get("USER_NAME");

        String path = ServletActionContext.getServletContext().getRealPath("/image/gravatar");  
        System.out.println(path);
        System.out.println(uploadFile.getName());
        System.out.println(uploadFileFileName);
        System.out.println(uploadFileContentType);
        
        if ( uploadFile != null )
        {
        	File jpgFile = new File(path+"/"+userName+".jpg");
        	if ( jpgFile.exists() )
        		jpgFile.delete();
        	File pngFile = new File(path+"/"+userName+".png");
        	if ( pngFile.exists() )
        		pngFile.delete();
        	String newFileName =  path + "/" + userName + getExtention(uploadFileFileName);
        	System.out.println(newFileName);
	        File destFile = new File(newFileName);
	        if(!destFile.getParentFile().exists())
	            destFile.getParentFile().mkdirs();
	        FileUtils.copyFile(uploadFile, destFile);  
	        ActionContext.getContext().put("message", "success"); 
		
        }
     
		
		return "SUCCESS";
	}
	
}
