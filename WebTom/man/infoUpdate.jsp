<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>Information</title>
    
    <script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>
        
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	
	<head>
	<style type="text/css">
	#menu {
	font-family:Georgia, serif;
	position: absolute;
	top: 50px;
	left: -20px;
	font-size: 115%;
	/*background: url('img/menu_cut.jpg') no-repeat scroll right;*/
	margin-right: 0px;
    }
    
    #menu ul li {
	/*float: left;*/
	position:relative;
	display: inline;
    }
    
    #menu ul li a {
	text-decoration: none;
	color: #101115;
	text-transform: uppercase;
	font-weight: 300;
	letter-spacing: 1px;
	display: block;
	padding: 29px 40px 0 40px;
	height: 46px;
	background-color: #fff;
	filter:alpha(opacity=50); 
	-moz-opacity:0.5; 
	opacity:0.5;
    }
    
    #menu ul li a:hover {
	background-color: #f3f3f3;
    }
    
    #menu ul li a.active {
	background: none;
	color: rgb(200,200,245);
	filter:alpha(opacity=90); 
	-moz-opacity:0.9; 
	opacity:0.9;
    }
    
    #context {
	font-family:Georgia, serif;
	position: absolute;
	top: 50px;
	left: 300px;
	buttom: 200px;
	right: 100px;
	font-size: 100%;
	/*background: url('img/menu_cut.jpg') no-repeat scroll right;*/
	margin-right: 0px;
    }
    
    #gravatar{
		font-family:Georgia, serif;
		position: absolute;
		top: 50px;
		left: 700px;
		width: 200px;
		height: 200px;
		font-size: 100%;
		/*background: url('img/menu_cut.jpg') no-repeat scroll right;*/
		margin-right: 0px;
		
 		border-style: solid;
 		border-color: rgba(255,255,255,0.35);
  		border-width: 5px;
    }
    
	/*info table------------------------------------------------------------*/
	.info-table
	{
	  width: 500px;
	  float:left;
	  margin: 0 auto;
	  border-collapse: separate;
	  border-spacing: 0;
	  text-shadow: 0 1px 0 #fff;
	  color: rgba(50,50,50,1.0);
	  background: rgba(200,200,200,0.8);
	  }
	
	.info-table td
	{
	  height: 40px;
	  line-height: 40px;
	  padding: 0 20px;
	  border-bottom: 1px solid #cdcdcd;
	  box-shadow: 0 1px 0 white;
	  -moz-box-shadow: 0 1px 0 white;
	  -webkit-box-shadow: 0 1px 0 white;
	  white-space: nowrap;
	  text-align: center;
	  
	}
	
	/*Body*/
	.info-table tbody td
	{
	  text-align: center;
	  font: normal 20px Georgia , Verdana, Arial, Helvetica;
	  width: 100px;
	}
	
	.info-table td:nth-child(1)
	{
	  background: rgba(150,150,150,0);
	  width: 100px;
	}
	
	.info-table td:nth-child(2)
	{
	  background: #e7f3d4;
	  background: rgba(225,225,225,0.35);
	  width: 150px;
	}
	
	
	.info-table tr:nth-child(even){
	  	background: rgba(255,220,220,0.5);
	}
	
	.info-table tr:nth-child(odd){
	  	background: rgba(220,220,255,0.5);
	}
	
	.info-table tr:hover
	{
	  background: rgba(255,255,255,0.3);
	}
	
	/* manage button ----------------------------------------------------------------------*/
    .info #manage input[type=button] {
    /* Width and position */
    width: 140px;
    height: 35px;
    padding: 4px 2px;
    margin: 5px 20px 0px 20px ;
    
    /* Styles */
    border: 1px solid #0273dd; /* Fallback */
    border: 1px solid rgba(0,0,0,0.4);
    box-shadow:
        inset 0 1px 0 rgba(255,255,255,0.3),
        inset 0 10px 10px rgba(255,255,255,0.1);
    border-radius: 3px;
    background: rgba(100,100,255,0.5);
    cursor:pointer;
  
    /* Font styles */
    font-family: 'trebuchet MS', 'Lucida Sans', Arial;
    color: white;
    font-weight: 200;
    font-size: 20px;
    text-shadow: 0 -1px 0 rgba(100,100,100,0.5);
	}
	
	.info #manage input[type=button]:hover { 
	    box-shadow: inset 0 1px 0 rgba(255,255,255,0.6);
	}
	/* end manage button ---------------------------------------------------------*/   
	#form-info {
	    font-family: Times, TimesNR, 'New Century Schoolbook',Georgia, 'New York', serif;
	    font-weight: 200;
	    /* Size and position */
	 	 width: 500px;
	  	float:left;
	  	margin: 0 auto;
	    position: relative;
	    padding: 10px;
	    overflow: hidden;
	
	    /* Styles */
	    background: #222; 
	    border-radius: 0.4em;
	    border: 1px solid #191919;
	    box-shadow: 
	        inset 0 0 2px 1px rgba(255,255,255,0.08), 
	        0 16px 10px -8px rgba(0, 0, 0, 0.6);
	}
	
	#form-info label {
	    /* Size and position */
	    width: 40%;
	    float: left;
	    padding-top: 9px;
	
	    /* Styles */
	    color: #ddd;
	    font-size: 12px;
	    text-transform: uppercase;
	    letter-spacing: 1px;
	    text-shadow: 0 1px 0 #000;
	    text-indent: 10px;
	    font-weight: 700;
	    cursor: pointer;
	}
	
	#form-info input[type=text],
	#form-info input[type=password] {
	    /* Size and position */
	    width: 50%;
	    float: left;
	    padding: 8px 5px;
	    margin-bottom: 10px;
	    font-size: 12px;
	
	    /* Styles */
	    background: #1f2124; /* Fallback */
	    background: -moz-linear-gradient(#1f2124, #27292c);
	    background: -ms-linear-gradient(#1f2124, #27292c);
	    background: -o-linear-gradient(#1f2124, #27292c);
	    background: -webkit-gradient(linear, 0 0, 0 100%, from(#1f2124), to(#27292c));
	    background: -webkit-linear-gradient(#1f2124, #27292c);
	    background: linear-gradient(#1f2124, #27292c);    
	    border: 1px solid #000;
	    box-shadow:
	        0 1px 0 rgba(255,255,255,0.1);
	    border-radius: 3px;
	
	    /* Font styles */
	    font-family: Times, TimesNR, 'New Century Schoolbook',Georgia, 'New York', serif;
	    color: #fff;
	
	}
	
	#form-info input[type=text]:hover,
	#form-info input[type=password]:hover {
	    background: #27292c;
	}
	
	#form-info input[type=text]:focus, 
	#form-info input[type=password]:focus {
	    box-shadow: inset 0 0 2px #000;
	    background: #494d54;
	    border-color: #51cbee;
	    outline: none; /* Remove Chrome outline */
	}
	
	/*#form-info p:nth-child(3),
	#form-info p:nth-child(4) {
	    float: left;
	    width: 200px;
	}*/
	
	#form-info label[for=remember] {
	    width: auto;
	    float: none;
	    display: inline-block;
	    text-transform: capitalize;
	    font-size: 11px;
	    font-weight: 400;
	    letter-spacing: 0px;
	    text-indent: 2px;
	}
	
	#form-info input[type=checkbox] {
	    margin-left: 10px;
	    vertical-align: middle;
	}
	
	#form-info input[type=submit] {
	    /* Width and position */
	    width: 100%;
	    height:50px;
	    padding: 8px 5px;
	    float:right;
	    margin:0px auto;
	  
	    /* Styles */
	    border: 1px solid #0273dd; /* Fallback */
	    border: 1px solid rgba(0,0,0,0.4);
	    box-shadow:
	        inset 0 1px 0 rgba(255,255,255,0.3),
	        inset 0 10px 10px rgba(255,255,255,0.1);
	    border-radius: 3px;
	    background: #38a6f0;
	    cursor:pointer;
	  
	    /* Font styles */
	    font-family: Times, TimesNR, 'New Century Schoolbook', Georgia, 'New York', serif;
	    color: white;
	    font-weight: 700;
	    font-size: 15px;
	    text-shadow: 0 -1px 0 rgba(0,0,0,0.8);
	}
	
	#form-info input[type=submit]:hover { 
	    box-shadow: inset 0 1px 0 rgba(255,255,255,0.6);
	}
	
	#form-info input[type=submit]:active { 
	    background: #287db5;
	    box-shadow: inset 0 0 3px rgba(0,0,0,0.6);
	    border-color: #000; /* Fallback */
	    border-color: rgba(0,0,0,0.9);
	}
	
	.no-boxshadow #form-info input[type=submit]:hover {
	    background: #2a92d8;
	}
	
	#form-info:after {
	    /* Size and position */
	    content: "";
	    height: 1px;
	    width: 33%;
	    position: absolute;
	    left: 20%;
	    top: 0;
	
	    /* Styles */
	    background: -moz-linear-gradient(left, transparent, #444, #b6b6b8, #444, transparent);
	    background: -ms-linear-gradient(left, transparent, #444, #b6b6b8, #444, transparent);
	    background: -o-linear-gradient(left, transparent, #444, #b6b6b8, #444, transparent);
	    background: -webkit-gradient(linear, 0 0, 100% 0, from(transparent), color-stop(0.25, #444), color-stop(0.5, #b6b6b8), color-stop(0.75, #444), to(transparent));
	    background: -webkit-linear-gradient(left, transparent, #444, #b6b6b8, #444, transparent);
	    background: linear-gradient(left, transparent, #444, #b6b6b8, #444, transparent);
	}
	
	#form-info:before {
	    /* Size and position */
	    content: "";
	    width: 8px;
	    height: 5px;
	    position: absolute;
	    left: 34%;
	    top: -7px;
	    
	    /* Styles */
	    border-radius: 50%;
	    box-shadow: 0 0 6px 4px #fff;
	}
	
	#form-info p:nth-child(1):before{
	    /* Size and position */
	    content:"";
	    width:250px;
	    height:100px;
	    position:absolute;
	    top:0;
	    left:45px;
	
	    /* Styles */
	    -webkit-transform: rotate(75deg);
	    -moz-transform: rotate(75deg);
	    -ms-transform: rotate(75deg);
	    -o-transform: rotate(75deg);
	    transform: rotate(75deg);
	    background: -moz-linear-gradient(50deg, rgba(255,255,255,0.15), rgba(0,0,0,0));
	    background: -ms-linear-gradient(50deg, rgba(255,255,255,0.15), rgba(0,0,0,0));
	    background: -o-linear-gradient(50deg, rgba(255,255,255,0.15), rgba(0,0,0,0));
	    background: -webkit-linear-gradient(50deg, rgba(255,255,255,0.15), rgba(0,0,0,0));
	    background: linear-gradient(50deg, rgba(255,255,255,0.15), rgba(0,0,0,0));
	    pointer-events:none;
	}
	
	
	
	
	
	</style>
	<%@ page import = "com.UserInfo" %>
	<%@ page import = "com.UserInfoUtil" %>
	<%@ page import = "com.man.UserInfoShowDAO" %>
	<%
		String userName = (String)session.getAttribute("USER_NAME");
		if ( userName == null || userName == "" )
		{
			%>
			<script type="text/javascript">
					window.location.href="../login/Error.jsp"; 
			</script>
			<% 
		}
		UserInfoUtil userInfoUtil = new UserInfoUtil();
		UserInfo userInfo = userInfoUtil.getUserInfo(userName);
		UserInfoShowDAO userInfoShowDAO = new UserInfoShowDAO();
		userInfoShowDAO.setUserInfo(userInfo);
		String head ="";
		String content="";
		while( userInfoShowDAO.hasNext()){
			head += userInfoShowDAO.getHead()+"#";
			content += userInfoShowDAO.getContent()+"#";
		}
		
	%>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>
	function CreateTable(div)
	  { 
	   var table=$("<table class = \"info-table\">");
	     table.appendTo($(div));
	     var infos = ['Name','Email','Tel','Address','Birthday'];
	     var infoNum = 5;
	     var aniTime = 300;
	     
	     var headAll = "<%=head%>";
		 var contentAll = "<%=content%>";
		 
		 var heads = new Array();
		 heads = headAll.split("#");
		 var contents = new Array();
		 contents = contentAll.split("#");
	     
	     for(var i=0;i<heads.length;i++){
	    	 if ( contents[i] == "" )
	    		 continue;
		     var tr = $("<tr></tr>");
		     tr.appendTo($(table));
		     tr.append("<td>"+heads[i]+"</td>").append("<td>"+contents[i]+"</td>");
		     tr.animate({height:'-=40',opacity:'0.0'},0);
		     tr.animate({opacity:'0.0'},i*aniTime/2);
		     tr.animate({height:'+=40',opacity:'1.0'},aniTime);
	     }
	     
	     
	     $(div).append("</table>");
	  }
	
	function AddItem( head , context )
	{
	    /* var tr = $("<tr></tr>");
	     tr.appendTo($("#info-table"));
	     tr.append("<td>"+head+"</td>").append("<td>"+context+"</td>");
	     tr.animate({height:'-=40',opacity:'0.0'},0);
	     tr.animate({opacity:'0.0'},i*aniTime/2);
	     tr.animate({height:'+=40',opacity:'1.0'},aniTime);*/
	}
	
	$(document).ready(function(){
		//CreateTable("div#context");
		//CreateUserInfoTable("div#context");
		$("div#menu ul li").hover(function(){
			$(this).animate({left:'+=25px'}, 500);
		}, function(){
			$(this).animate({left:'-=25px'},500);
		});
	});
	</script>
	
	
</head>

<body  >
    
    <!-- BackGround -->
    <div  style="width:100%;height:100%;position:fixed;z-index:-1;top:0px;left:0px;">
		<img src="../bgp.jpg" width="100%" height="100%" >
	</div> 
    <!-- *********  Header  ********** -->
    
    <div id="header">
        <div id="header_in">
        
        <div id="menu">
         <ul>
            <li><a href="../man/index.jsp" >Home</a></li>
            <li><a href="../man/info.jsp" class="active">Information</a></li>
            <li><a href="../man/record.jsp">Record</a></li>
            <li><a href="../man/show.jsp" >Show</a></li>          
         </ul>
        </div>
        
        </div>
    </div>
    
    <div id="context" class = "info">
    	<div id = "manage">
			<input type = "button" name = "update" value = "Update" id = "updatebtn" >
		
    	</div>
    	<br>
    	<s:form  action="/InfoUpdate" method="post" id = "form-info"  theme="simple">		    
			<label>Username *</label>
			<label><%=userName %></label>
			<br>
			<label> </label>
			<br>
			<label>Old Password :</label>
			<s:password name="oldPassword" placeholder="if you want to change your password"/>
			<label>New Password :</label>
			<s:password name="newPassword" placeholder="write your new password here"/>
			<label>Confirm New Password</label>
			<s:password name="confirmNewPassword" placeholder="write your password again"/>
			<label>sex</label>
			<s:textfield name="sex" placeholder="your sex here"/>
			<label>age</label>
			<s:textfield name="age" placeholder="your age here"/>
			<label>Real Name</label>
			<s:textfield name="realName" placeholder="Please write your real name"/>
			<label>email</label>
			<s:textfield name="email" placeholder="your email here"/>
			<label>hobby</label>
			<s:textfield name="hobby" placeholder="any hobby?"/>
			
			<s:submit/>
		</s:form>
    </div>
    
    
</body>

</html>
