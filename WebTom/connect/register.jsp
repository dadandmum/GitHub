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
			
			if ( userName == null || password == null )
			{
				response.getWriter().print("FAIL");
			}
			else if ( userBaseUtil.checkUserName(userName) )
				response.getWriter().print("USER_NAME_USED");
			else if ( !UserBaseUtil.ifPasswordRight(password) )
				response.getWriter().print("PASSWORD_TOO_SHORT");
			else 
			{
				userBaseUtil.insert(userName, password);
				response.getWriter().print("SUCCESS");
			}
			
		%>
    </head>
     
    <body>
    </body>
</html>