<!DOCTYPE html>

<%@page import="org.apache.catalina.User"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="refresh" content="3;url=../man/index.jsp">
    <title>User Not Exist</title>
    
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Animated Buttons with CSS3" />
        <meta name="keywords" content="css3, transitions, button, animation, hover, effect, icon, call-to-action, active" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
    <script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>
    <script type="text/javascript" src="js/jquery2.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	
	<head>
	<style type="text/css">
	
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
	
	
	
	#back {
		position: absolute;
		top:10px;
		right:20px;
	}
	
	body{
		text-align:center;
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
	#tips #context{
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
	<script type="text/javascript">
	$(document).ready(function(){
		$("#tips").hide().show(333);
		$("#context").hide().show(333);
		
	});
	</script>
</head>

<body  >
    
    <!-- BackGround -->
    <div  style="width:100%;height:100%;position:fixed;z-index:-1;top:0px;left:0px;">
		<img src="../bgp.jpg" width="100%" height="100%" >
	</div> 
    <!-- *********  Header  ********** -->
    
     <div id = "back">
     <div class="content" >
				<div class="button-wrapper">
					<a href="../login/index.jsp" class="blue-back">
						<span class="blue-back-text">Back</span> 
						<span class="blue-back-slide-text">log in again!</span>
						<span class="blue-back-icon-right"><span></span></span>
					</a>
				</div>
            </div>
    </div>
    <body>
    <div id="tips">
    	<p id = "context">
			Thank you for register!
		</p>
    </div>
    </body>
  

</body>
</html>
