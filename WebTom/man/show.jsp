<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>Show</title>
    
    <script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>
    
   <!-- <link rel="stylesheet" href="reset.css" type="text/css">
    <link rel="stylesheet" href="styl.css" type="text/css"> --> 
        
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	
	<head>
	<style type="text/css">
	#menu {
	font-family: Georgia, serif;
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
	font-family:'trebuchet MS', 'Lucida Sans', Arial;
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
		font-family:'trebuchet MS', 'Lucida Sans', Arial;
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
	    font-family: 'trebuchet MS', 'Lucida Sans', Arial;
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
	    padding-right:630px;
	    -webkit-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);
	    -moz-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);
	    box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);
	}
	.blue-back:hover .blue-back-text{
	    text-shadow:0px 1px 1px #5d81ab;
	    color:#fff;
	}
	.blue-back:hover .blue-back-slide-text{
	    width:550px;
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
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>
	
	$(document).ready(function(){
		$("div#menu ul li").hover(function(){
			$(this).animate({left:'+=25px'}, 500);
		}, function(){
			$(this).animate({left:'-=25px'},500);
		});
		var animateTime = 500;
		$(".blue-back").each(function(index,element){
			$(this)
			.animate({opacity:'1.0'},index*animateTime/2)
			.animate({opacity:'0.05'},animateTime/2)
			.animate({opacity:'1.0'},animateTime/2);
			
			
		});
	});
	</script>
	
</head>

<body  >
    
    <!-- BackGround -->
    <div  style="width:100%;height:100%;position:fixed;z-index:-1;top:0px;left:0px;">
		<img src="img/bgimg.jpg" width="100%" height="100%" >
	</div> 
    <!-- *********  Header  ********** -->
    
    <div id="header">
        <div id="header_in">
        
        <div id="menu">
         <ul>
            <li><a href="../man/index.jsp" >Home</a></li>
            <li><a href="../man/info.jsp">Information</a></li>
            <li><a href="../man/record.jsp">Record</a></li>
            <li><a href="../man/show.jsp" class="active" >Show</a></li>    
         </ul>
        </div>
        
        </div>
    </div>
    
    <div id="context" class = "info">
    
		<div class="button-wrapper">
			<a href="../man/map.jsp" class="blue-back">
				<span class="blue-back-text">Map</span> 
				<span class="blue-back-slide-text">See your records on map!</span>
				<span class="blue-back-icon-right"><span></span></span>
			</a>
			<br>
			<a href="../man/image.jsp" class="blue-back">
				<span class="blue-back-text">Pictures</span> 
				<span class="blue-back-slide-text">See your pictures here!</span>
				<span class="blue-back-icon-right"><span></span></span>
			</a>
			<br>
			<a href="../man/humidity.jsp" class="blue-back">
				<span class="blue-back-text">Humidity</span> 
				<span class="blue-back-slide-text">Your records about humidity!</span>
				<span class="blue-back-icon-right"><span></span></span>
			</a>
			<br>
			<a href="../man/wifi.jsp" class="blue-back">
				<span class="blue-back-text">WIFI</span> 
				<span class="blue-back-slide-text">See your records about WIFI!</span>
				<span class="blue-back-icon-right"><span></span></span>
			</a>
			<br>
			<a href="../man/illumination.jsp" class="blue-back">
				<span class="blue-back-text">Illumination</span> 
				<span class="blue-back-slide-text">Your records about illumination!</span>
				<span class="blue-back-icon-right"><span></span></span>
			</a>
		</div>
		
    </div>


</body>
</html>
