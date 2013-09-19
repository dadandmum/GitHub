<!DOCTYPE html>
<%@page import="org.apache.struts2.components.Else"%>
<html lang="en">
	<html xmlns="http://www.w3.org/1999/xhtml">
        <meta name="author" content="AtwoodDeng" />
		<%@  page import = "com.UserRecordUtil" %>
		<%@  page import = "com.UserRecord" %>
		<%
			UserRecordUtil userRecordUtil = new UserRecordUtil();
			String info = (String)request.getParameter("info");
			
			if ( info == null )
				response.getWriter().print("FAIL");
			else{
				String infos[] = info.split("-");

				if ( infos.length <5  )
					response.getWriter().print("FAIL");
				else{
					
					UserRecord userRecord = new UserRecord();
					userRecord.setUserName(infos[0]);
					userRecord.setTime(infos[1]);
					userRecord.setLocation(infos[2]);
					userRecord.setWifi(infos[3]);
					userRecord.setTemperature(infos[4]);
					userRecordUtil.saveUserRecord(userRecord);
					response.getWriter().print("SUCCESS");
				}
			}
				
			
			
		%>
    </head>
     
    <body>
    </body>
</html>