
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>Register</title>
    
    <script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>
    <script src="js/jquery2.js"></script>
   <!-- <link rel="stylesheet" href="reset.css" type="text/css">
    <link rel="stylesheet" href="styl.css" type="text/css"> --> 
        
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	
	<head>
	<style type="text/css">  
	
	.head{
	    font-family: Times, TimesNR, 'New Century Schoolbook',Georgia, 'New York', serif;
	    font-weight: 200;
	    margin: 0px auto;
	    width:350px;
		
	}
	
	#form-reg {
	    font-family: Times, TimesNR, 'New Century Schoolbook',Georgia, 'New York', serif;
	    font-weight: 200;
	    /* Size and position */
	    width: 425px ;
	    position: relative;
	    margin: 60px auto 30px;
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
	
	#form-reg label {
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
	
	#form-reg input[type=text],
	#form-reg input[type=password] {
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
	
	#form-reg input[type=text]:hover,
	#form-reg input[type=password]:hover {
	    background: #27292c;
	}
	
	#form-reg input[type=text]:focus, 
	#form-reg input[type=password]:focus {
	    box-shadow: inset 0 0 2px #000;
	    background: #494d54;
	    border-color: #51cbee;
	    outline: none; /* Remove Chrome outline */
	}
	
	/*#form-reg p:nth-child(3),
	#form-reg p:nth-child(4) {
	    float: left;
	    width: 200px;
	}*/
	
	#form-reg label[for=remember] {
	    width: auto;
	    float: none;
	    display: inline-block;
	    text-transform: capitalize;
	    font-size: 11px;
	    font-weight: 400;
	    letter-spacing: 0px;
	    text-indent: 2px;
	}
	
	#form-reg input[type=checkbox] {
	    margin-left: 10px;
	    vertical-align: middle;
	}
	
	#form-reg input[type=submit] {
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
	
	#form-reg input[type=submit]:hover { 
	    box-shadow: inset 0 1px 0 rgba(255,255,255,0.6);
	}
	
	#form-reg input[type=submit]:active { 
	    background: #287db5;
	    box-shadow: inset 0 0 3px rgba(0,0,0,0.6);
	    border-color: #000; /* Fallback */
	    border-color: rgba(0,0,0,0.9);
	}
	
	.no-boxshadow #form-reg input[type=submit]:hover {
	    background: #2a92d8;
	}
	
	#form-reg:after {
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
	
	#form-reg:before {
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
	
	#form-reg p:nth-child(1):before{
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
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>
	$(document).ready(function(){
		$("p.clearfix")
		.animate({opacity:0},i*250)
		.animate({opacity:1},500);
		
		
	});
	</script>
	
</head>

<body  >
    
    <!-- BackGround -->
    <div  style="width:100%;height:100%;position:fixed;z-index:-1;top:0px;left:0px;">
		<img src="images/blurred.jpg" width="100%" height="100%" >
	</div> 
    <!-- *********  Header  ********** -->
    <div class="container">
    	<div class="head">
    		<font size = "15" face="arial" color="white">Join us now!</font>
    	</div>
   		 <section class="main">
				<s:form  action="/Register" method="post" id = "form-reg"  theme="simple">
				    
				    <label>Username *</label>
    				<s:textfield name="userName" placeholder="your email address is advised."/>
				    <label >Password *</label>
   					<s:password name="password" placeholder="your password here"/>
				    <label >Confirm *</label>
   					<s:password name="confirmPassword" placeholder="write your password again"/>
   					
   					<s:submit/>
				</s:form>
			</section>
    	
    </div>

</body>
</html>
