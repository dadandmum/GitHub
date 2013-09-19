<!DOCTYPE html>
<%@page import="org.apache.struts2.components.Else"%>
<html lang="en">
	<html xmlns="http://www.w3.org/1999/xhtml">
        <meta name="author" content="AtwoodDeng" />
		<%@  page import = "com.UserBaseUtil" %>
		<%
			UserBaseUtil userBaseUtil = new UserBaseUtil();
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			
			if ( !userBaseUtil.checkUserName(userName) )
				response.getWriter().print("USER_NAME_NOT_EXSIT");
			else if ( !userBaseUtil.checkPassword(userName, password))
				response.getWriter().print("PASSWORD_WRONG");
			else 
				response.getWriter().print("SUCCESS");
			
		%>
    </head>
     
    <body>
    </body>
</html>