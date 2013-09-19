<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="refresh" content="3;url=../man/info.jsp">
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

	
		#tips{
	    background: rgba(220,220,255,0.35);
	   
	    padding-left:40px;
	    padding-right:40px;
	    padding-top:0px;
	    padding-button:50px;
	    height:auto;
	    display:inline-block;
	    position:relative;
	    top:200px;
	    
	    border:1px solid #5d81ab; 
	    -webkit-box-shadow:0px 1px 1px rgba(255,255,255,0.2) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
	    -moz-box-shadow:0px 1px 1px rgba(255,255,255,0.2) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
	    box-shadow:0px 1px 1px rgba(255,255,255,0.2) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
	    -webkit-border-radius:20px;
	    -moz-border-radius:20px;
	    border-radius:10px;
	    
	    clear:both;
	    -webkit-transition:all 0.3s linear;
	    -moz-transition:all 0.3s linear;
	    -o-transition:all 0.3s linear;
	    transition:all 0.3s linear;
	}
	#tips #word{
	    position:relative;
	    padding-top:0px;
	    display:block;
	    font-size:55px;
	    font-weight:600;
	    white-space:nowrap;
	    text-shadow:0px 1px 1px rgba(255,255,255,0.3);
	    color:#fff;
	    -webkit-transition:all 0.2s linear;
	    -moz-transition:all 0.2s linear;
	    -o-transition:all 0.2s linear;
	    transition:all 0.2s linear;
	}
	
	</style>
	
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>

	
	$(document).ready(function(){
		//CreateTable("div#context");
		//CreateUserInfoTable("div#context");
		$("#tips").hide().show(333);
		$("#context").hide().show(333);
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
    
    <div id="context" class = "info" style="top:0px;right:250px;">
   		 <div id="tips">
    		<p id = "word">
				You successfully update<br> your information!
			</p>
		</div>
    	
    </div>
    
</body>

</html>
