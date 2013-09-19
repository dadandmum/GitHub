<!DOCTYPE html>

<%@page import="org.apache.struts2.components.Else"%>
<%@page import="com.UserInfo"%>
<html>
<head>
    <meta charset="utf-8">
    <title>Judge</title>
    <script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<jsp:useBean id="loginError" scope="session" class="com.error.LoginError"/>
	<jsp:useBean id="user" scope="session" class="com.UserBase"/>
	
	<%@ page import = "com.UserBaseUtil" %>
	<%
		String userName = (String)request.getParameter("login");
		String password = (String)request.getParameter("password");
		//UserBaseUtil ubu = new ubu();
		UserBaseUtil ubu = new UserBaseUtil();
		if ( !ubu.checkUserName(userName)  )
		{
			%>
				
				<jsp:setProperty name="loginError" property = "message" value="Sorry, the user name is not correct."/>
				<script type="text/javascript">
           			window.location.href="LoginError.jsp"; 
    			</script> 
			<%
		}
		else if ( !ubu.checkPassword(userName, password))
		{
			%>
				<jsp:setProperty name="loginError" property = "message" value="Sorry, your password is wrong."/>
				<script type="text/javascript">
           			window.location.href="LoginError.jsp"; 
    			</script> 
			<%
		}else{
			session.setAttribute("USER_NAME", userName);
			%>
				<script type="text/javascript">
       				window.location.href="../man/index.jsp"; 
				</script> 
			<%
		}
	%>
	 
</head>

<body  >
    
    <!-- BackGround -->
    <div  style="width:100%;height:100%;position:fixed;z-index:-1;top:0px;left:0px;">
		<img src="images/blurred.jpg" width="100%" height="100%" >
	</div> 
  

</body>
</html>
