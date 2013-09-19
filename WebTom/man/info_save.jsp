<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>Information</title>
    
    <script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>
    
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
	</style>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>
	function CreateTable(div)
	  { 
	    var table=$("<table class = \"info-table\">");
	     table.appendTo($(div));
	     var infos = ['Name','Email','Tel','Address','Birthday'];
	     var infoNum = 5;
	     var aniTime = 300;
	     for(var i=0;i<infoNum;i++){
		     var tr = $("<tr></tr>");
		     tr.appendTo($(table));
		     tr.append("<td>"+infos[i]+"</td>").append("<td>123456</td>");
		     tr.animate({height:'-=40',opacity:'0.0'},0);
		     tr.animate({opacity:'0.0'},i*aniTime/2);
		     tr.animate({height:'+=40',opacity:'1.0'},aniTime);
	     }
	     
	     
	     $(div).append("</table>");
	  }
	
	$(document).ready(function(){
		CreateTable("div#context");
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
		<img src="img/bgimg.jpg" width="100%" height="100%" >
	</div> 
    <!-- *********  Header  ********** -->
    
    <div id="header">
        <div id="header_in">
        
        <div id="menu">
         <ul>
            <li><a href="index.jsp" >Home</a></li>
            <li><a href="info.jsp" class="active">Infomation</a></li>
            <li><a href="record.jsp">Record</a></li>
            <li><a href="show.jsp" >Show</a></li>        
         </ul>
        </div>
        
        </div>
    </div>
    
    <div id="context" class = "info">
    	<div id = "manage">
			<input type = "button" name = "update" value = "Update" id = "updatebtn" >
			<input type = "button" name = "gravatar" value = "Gravatar " id = "gravatarbtn" >
    		
    	</div>
    	<br>
    </div>
    
    <div  id = "gravatar" >
    	<img src="img/gravatar.jpg" width="100%" height="100%" >
    </div>
    


</body>
</html>
