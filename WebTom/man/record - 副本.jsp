<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>NINA Theme – Free HTML theme</title>
    
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
	left: 250px;
	buttom: 200px;
	right: 100px;
	font-size: 100%;
	/*background: url('img/menu_cut.jpg') no-repeat scroll right;*/
	margin-right: 0px;
    }
    
	/*Features table------------------------------------------------------------*/
	.features-table
	{
	  width: 100%;
	  margin: 0 auto;
	  border-collapse: separate;
	  border-spacing: 0;
	  text-shadow: 0 1px 0 #fff;
	  color: rgba(50,50,50,1.0);
	  background: rgba(200,200,200,0);  
	  background-image: -moz-linear-gradient(top, #fff, #eaeaea, #fff); /* Firefox 3.6 */
	  background-image: -webkit-gradient(linear,center bottom,center top,from(#fff),color-stop(0.5, #eaeaea),to(#fff)); 
	}
	
	.features-table td
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
	.features-table tbody td
	{
	  text-align: center;
	  font: normal 12px Verdana, Arial, Helvetica;
	  width: 115px;
	}
	
	.features-table tbody td:first-child
	{
	  width: auto;
	  text-align: left;
	}
	
	.features-table td
	{
	  background: rgba(144,144,144,0.15);
	  border-right: 1px solid white;
	}
	
	.features-table td:first-child
	{
	  background: rgba(225,225,85,0.2);
	  width: auto;
	}
	
	.features-table td:last-child
	{
	  background: #e7f3d4;
	  background: rgba(184,243,85,0.3);
	  width: 50px;
	}
	
	.features-table tr:hover
	{
	  background: rgba(200,200,200,0.3);
		
	}

	
	/*Header*/
	.features-table thead td
	{
	  font: bold 1.3em 'trebuchet MS', 'Lucida Sans', Arial;  
	  -moz-border-radius-topright: 10px;
	  -moz-border-radius-topleft: 10px; 
	  border-top-right-radius: 10px;
	  border-top-left-radius: 10px;
	  border-top: 1px solid #eaeaea; 
	}
	
	.features-table head td:first-child
	{
	  background: rgba(225,225,85,0.2);
	  width: auto;
	}
	
	
	.features-table head td:last-child
	{
	  background: #e7f3d4;  
	  background: rgba(184,243,85,0.3);
	  width: 50px;
	}
	
	/*Footer*/
	.features-table tfoot td
	{
	  font: bold 1.4em Georgia;  
	  -moz-border-radius-bottomright: 10px;
	  -moz-border-radius-bottomleft: 10px; 
	  border-bottom-right-radius: 10px;
	  border-bottom-left-radius: 10px;
	  border-bottom: 1px solid #dadada;
	}
	
	.features-table tfoot td:first-child
	{
	  border-bottom: none;
	}

	
    /*End Features table------------------------------------------------------------*/
    
    /* manage button ----------------------------------------------------------------------*/
    .record #manage input[type=button] {
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
	
	.record #manage input[type=button]:hover { 
	    box-shadow: inset 0 1px 0 rgba(255,255,255,0.6);
	}
	/* end manage button ---------------------------------------------------------*/   
	
	/* text ----------------------------------------------------------------------*/
	.record #search input,
	.record #search label{
		position :relative;
		margin:5px 20px 10px 20px
	}
	.record #search input[type=text],
	.record #search input[type=password] {
	    /* Size and position */
	    width: 200px;
	    padding: 8px 5px;
	    /*margin-bottom: 10px;*/
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
	    font-family: 'Ubuntu', 'Lato', sans-serif;
	    color: #fff;
	
	}
	
	.record #search input[type=text]:hover,
	.record #search input[type=password]:hover{
	    background: rgba(255,255,255,0.15);
	}
	
	.record #search input[type=text]:focus, 
	.record #search input[type=password]:focus {
	    box-shadow: inset 0 0 2px #000;
	    background: #494d54;
	    border-color: #51cbee;
	    outline: none; /* Remove Chrome outline */
	}
	.record #search label {
    /* Size and position */
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
	/* end of text ----------------------------------------------------------------*/
	
	</style>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>
	function CreateTable(div,rowCount)
	  { 
	    var table=$("<table class = \"features-table\">");
	     table.appendTo($(div));

		 var cellCount = 6;
	     
	     var thead = $("<thead></thead>");
	     thead.appendTo(table);
	     var htr =$("<tr></tr>");
	     htr.appendTo(thead);
	     
	     var tdTime = $("<td>Time</td>");tdTime.appendTo(thead);
	     var tdLocation = $("<td>Location</td>");tdLocation.appendTo(thead);
	     var tdWiFi = $("<td>Wi-Fi</td>");tdWiFi.appendTo(thead);
	     var tdAcceleration = $("<td>Acceleration</td>");tdAcceleration.appendTo(thead);
	     var tdIllumination = $("<td>Illumination</td>");tdIllumination.appendTo(thead);
	     var tdPick = $("<td>Pick</td>");tdPick.appendTo(thead);
	     
	     var tbody=$("<tbody></tbody>");
	     tbody.appendTo(table);
	     var aniTime = 300;
	     for(var i=0;i<rowCount;i++)
	     {
	        var tr=$("<tr ></tr>");
	        
	        
	        for(var j=0;j<cellCount;j++)
	        {
	           var td;
	           if ( j == cellCount -1){
	        	   td = $("<td><input type=\"checkbox\"</td>");
	           }else
	        	   td = $("<td>"+i*j+"</td>");
	           td.appendTo(tr);
	        }

	        tr.appendTo(tbody);
	        tr.hover(function(){
	        	$(this).addClass("hover");
	        },function(){
	        	
	        });
	        tr.animate({height:'-=25',opacity:'0.0'},0);
	        tr.animate({opacity:'0.0'},i*aniTime/2);
	        tr.animate({height:'+=25',opacity:'1.0'},aniTime);
	        
	     }
	     //trend.appendTo(table);
	     $(div).append("</table>");
	  }
	function AddNextLastButton(div){
		var man_div = $("<div id = \"manage\"></div>");
		man_div.appendTo($(div));
		var last = $("<input type = \"button\" name = \"last\" value = \"Last Page\" id = \"lastbtn\" >");
		var next = $("<input type = \"button\" name = \"next\" value = \"Next Page\" id = \"nextbtn\" Style{float:\'right\'}>");
		man_div.append(last).append(next);
	}
	$(document).ready(function(){

		CreateTable("div#context", 6);
		AddNextLastButton("div#context");
		
		$("div#menu ul li").hover(function(){
			$(this).animate({left:'+=30px'}, 500);
		}, function(){
			$(this).animate({left:'-=30px'},500);
		});
		
		$("#search").hide();
		$("#searchbtn").click(function(){
			$("#search").show(500);
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
            <li><a href="../man/index.jsp" class="active">Home</a></li>
            <li><a href="../man/info.jsp">Information</a></li>
            <li><a href="../man/record.jsp">Record</a></li>
            <li><a href="../man/show.jsp" >Show</a></li>            
         </ul>
        </div>
        
        </div>
    </div>
    
    <div id="context" class="record">
    	<div id = "manage">
    		<input type = "button" name = "pickall" value = "Pick All" id = "pickallbtn" >
    		<input type = "button" name = "picknone" value = "Pick None" id = "picknonebtn" >
    		<input type = "button" name = "delete" value = "Delete" id = "deletebtn" >
    		<input type = "button" name = "search" value = "Search" id = "searchbtn" >
			<xn:share-button type="button_count_right" label="" href="http://Info from JJJ"></xn:share-button>
			<img src = "../man/img/sina.png" width = 50px height=50px></a>
    	</div>
    	<br/>
    	<div id = "search">
    		<label>Start From: </label>
		    <input type="text" name="startdate" id="startdate" placeholder="date: yyyy-mm-dd"> 
		    <label>End In: </label>
		    <input type="text" name="enddate" id="enddate" placeholder="date: yyyy-mm-dd"> 
    		
    	</div>
    </div>
    
    <div id="search">
    	
    </div>
    

</body>
</html>
