<!DOCTYPE html>

<%@page import="org.apache.catalina.User"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="refresh" content="5;url=../man/record.jsp">
    <title>Home</title> 
   <!-- <link rel="stylesheet" href="reset.css" type="text/css">
    <link rel="stylesheet" href="styl.css" type="text/css"> --> 
        
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
    
    .blue-back{
	    background:#28b6c0;
	    background:-webkit-gradient(linear,left top,left bottom,color-stop(#80a9da,0),color-stop(#6f97c5,1));
	    background:-webkit-linear-gradient(top, #80a9da 0%, #6f97c5 100%);
	    background:-moz-linear-gradient(top, #28b6c0 0%, #28b6c0 100%);
	    background:-o-linear-gradient(top, #80a9da 0%, #6f97c5 100%);
	    background:linear-gradient(top, #80a9da 0%, #6f97c5 100%);
	    filter:progid:DXImageTransform.Microsoft.gradient( startColorstr='#80a9da', endColorstr='#6f97c5',GradientType=0 );
	    padding-left:20px;
	    padding-right:80px;
	    height:75px;
	    display:inline-block;
	    position:relative;
	    border:1px solid #5d81ab;
	    -webkit-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
	    -moz-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
	    box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
	    -webkit-border-radius:10px;
	    -moz-border-radius:10px;
	    border-radius:10px;
	    float:left;
	    clear:both;
	    margin:10px 0px;
	    overflow:hidden;
	    -webkit-transition:all 0.3s linear;
	    -moz-transition:all 0.3s linear;
	    -o-transition:all 0.3s linear;
	    transition:all 0.3s linear;
	    text-decoration: blink
	}
	.blue-back-text{
	    padding-top:5px;
	    display:block;
	    font-family: 'Ubuntu', 'Lato', sans-serif;
		color: white;
		font-weight: 700;
	    font-size:45px;
	    white-space:nowrap;
	    text-shadow:0px 1px 1px rgba(255,255,255,0.3);
	    color:#fff;
	    -webkit-transition:all 0.2s linear;
	    -moz-transition:all 0.2s linear;
	    -o-transition:all 0.2s linear;
	    transition:all 0.2s linear;
	}
	.blue-back-slide-text{
	    position:absolute;
	    height:100%;
	    top:0px;
	    right:52px;
	    width:0px;
	    background:#63707e;
	    text-shadow:0px -1px 1px #363f49;
	    color:#bbbbbb;
	    font-family: 'Ubuntu', 'Lato', sans-serif;
		color: white;
		font-weight: 700;
	    font-size:35px;
	    white-space:nowrap;
	    text-transform:uppercase;
	    text-align:left;
	    text-indent:10px;
	    overflow:hidden;
	    line-height:65px;
	    -webkit-box-shadow:-1px 0px 1px rgba(255,255,255,0.4), 1px 1px 2px rgba(0,0,0,0.2) inset;
	    -moz-box-shadow:-1px 0px 1px rgba(255,255,255,0.4), 1px 1px 2px rgba(0,0,0,0.2) inset;
	    box-shadow:-1px 0px 1px rgba(255,255,255,0.4), 1px 1px 2px rgba(0,0,0,0.2) inset;
	    -webkit-transition:width 0.3s linear;
	    -moz-transition:width 0.3s linear;
	    -o-transition:width 0.3s linear;
	    transition:width 0.3s linear;
	}
	.blue-back-icon-right{
	    position:absolute;
	    right:0px;
	    top:0px;
	    height:100%;
	    width:52px;
	    border-left:1px solid #5d81ab;
	    -webkit-box-shadow:1px 0px 1px rgba(255,255,255,0.4) inset;
	    -moz-box-shadow:1px 0px 1px rgba(255,255,255,0.4) inset;
	    box-shadow:1px 0px 1px rgba(255,255,255,0.4) inset;
	}
	.blue-back-icon-right span{
	    width:38px;
	    height:38px;
	    opacity:0.7;
	    position:absolute;
	    left:50%;
	    top:50%;
	    margin:-20px 0px 0px -20px;
	    background:transparent url(../images/arrow_right.png) no-repeat 50% 55%;
	    -webkit-transition:all 0.3s linear;
	    -moz-transition:all 0.3s linear;
	    -o-transition:all 0.3s linear;
	    transition:all 0.3s linear;
	}
	.blue-back:hover{
	    padding-right:430px;
	    -webkit-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);
	    -moz-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);
	    box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);
	}
	.blue-back:hover .blue-back-text{
	    text-shadow:0px 1px 1px #5d81ab;
	    color:#fff;
	}
	.blue-back:hover .blue-back-slide-text{
	    width:350px;
	}
	.blue-back:hover .blue-back-icon-right span{
	    opacity:1;
	}
	.blue-back:active{
	    position:relative;
	    top:1px;
	    background:#5d81ab;
	    -webkit-box-shadow:1px 1px 2px rgba(0,0,0,0.4) inset;
	    -moz-box-shadow:1px 1px 2px rgba(0,0,0,0.4) inset;
	    box-shadow:1px 1px 2px rgba(0,0,0,0.4) inset;
	    border-color:#80a9da;
	}
    
	</style>
	
	<jsp:useBean id="user" scope="session" class="com.UserBase"/>
	<% 
		//String  loginStr = request.getParameter("userName");
		String userName = (String)session.getAttribute("USER_NAME");
		if ( userName == null || userName == "" )
		{
			%>
			<script type="text/javascript">
   				window.location.href="../login/Error.jsp"; 
			</script>
			<% 
		}
		
	%>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>
	$(document).ready(function(){
		$("div#menu ul li").hover(function(){
			$(this).animate({left:'+=30px'}, 500);
		}, function(){
			$(this).animate({left:'-=30px'},500);
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
            <li><a href="../man/index.jsp" class="active">Home</a></li>
            <li><a href="../man/info.jsp">Information</a></li>
            <li><a href="../man/record.jsp">Record</a></li>
            <li><a href="../man/show.jsp" >Show</a></li>            
         </ul>
        </div>
        
        </div>
    </div>
    
    <div id="context">
		<font color = "white" size = "30">Welcome home <%=userName %>!</font>
		 <a href="javascript:void((function(s,d,e,r,l,p,t,z,c)
			 {var%20f='http://v.t.sina.com.cn/share/share.php?appkey='
			 ,u=z||d.location,p=['&url=',e(u),'&title=',e(t||d.title),'&source='
			 ,e(r),'&sourceUrl=',e(l),'&content=',c||'gb2312','&pic='
			 ,e(p||'')].join('');function%20a()
			 {if(!window.open([f,p].join(''),'mb',
			 ['toolbar=0,status=0,resizable=1,width=440,height=430,left=',
			 (s.width-440)/2,',top=',(s.height-430)/2].join('')))u.href=[f,p].join('');};
			 if(/Firefox/.test(navigator.userAgent))setTimeout(a,0);
			 else%20a();})(screen,document,encodeURIComponent,'','',''
			 ,'JJJ is wonderful!!!!!!!come and play with me~~~~~http://dadandmum.vicp.cc:81','location','gb2312'));">
			 <img src = "../man/img/sina.png" width = 50px height=50px></a>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<div class="button-wrapper" >
			<a href="../login/index.jsp" class="blue-back">
				<span class="blue-back-text">log out</span> 
				<span class="blue-back-slide-text">log out now</span>
				<span class="blue-back-icon-right"><span></span></span>
			</a>
		</div>
    </div>
    
    
  

</body>
</html>
