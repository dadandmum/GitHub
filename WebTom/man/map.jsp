<!DOCTYPE html>
    <title>Map</title>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
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
    
    
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map_canvas {
		top: 75px;
		left: 575px;
		buttom: 425px;
		right: 100px;
      	height: 58%;
      	width: 42%;
      	z-index:3;
      	
      	 border:1px solid #5d81ab; 
	    -webkit-box-shadow:0px 1px 1px rgba(255,255,255,0.2) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
	    -moz-box-shadow:0px 1px 1px rgba(255,255,255,0.2) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
	    box-shadow:0px 1px 1px rgba(255,255,255,0.2) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);
	    -webkit-border-radius:20px;
	    -moz-border-radius:20px;
	    border-radius:10px;
      	
      }
      
	#sub-title {
	    font-family: Times, TimesNR, 'New Century Schoolbook',Georgia, 'New York', serif;
	    font-weight: 200;
	    /* Size and position */
	 	 width: auto;
	  	float:left;
	  	margin: 0 auto;
	    position: relative;
	    padding: 10px 40px 10px 20px ;
	    overflow: hidden;
	
	    /* Styles */
	    background: #222; 
	    border-radius: 0.4em;
	    border: 1px solid #191919;
	    box-shadow: 
	        inset 0 0 2px 1px rgba(255,255,255,0.08), 
	        0 16px 10px -8px rgba(0, 0, 0, 0.6);
	        
	    /*font*/
	    
	    color: #ddd;
	    font-size: 25px;
	    letter-spacing: 1px;
	    text-shadow: 0 1px 0 #000;
	    text-indent: 10px;
	    font-weight: 700;
	}
	
	#sub-title label {
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
	
	#sub-title:after {
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
	
	#sub-title:before {
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
	
			/*info table------------------------------------------------------------*/
	.single-table
	{
	  width: 200px;
	  float:left;
	  margin: 0 auto;
	  border-collapse: separate;
	  border-spacing: 0;
	  text-shadow: 0 1px 0 #fff;
	  color: rgba(50,50,50,1.0);
	  background: rgba(200,200,200,0.8);
	  }
	
	.single-table td
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
	.single-table tbody td 
	{
	  position: relative;
	  text-align: center;
	  font: normal 12px Georgia , Verdana, Arial, Helvetica;
	  width: 100px;
	  height : 32px;
	  margin : 10px 10px 10px 19px;
	  padding: 10px 10px 21px 10 px;
	}
	
	.single-table div td:nth-child(1)
	{
	  background: rgba(150,150,150,0);
	  width: 100px;
	}
	
	.single-table div td:nth-child(2)
	{
	  background: #e7f3d4;
	  background: rgba(225,225,225,0.35);
	  width: 150px;
	}
	
	
	.single-table div tr:nth-child(even){
	  	background: rgba(255,220,220,0.5);
	}
	
	.single-table div tr:nth-child(odd){
	  	background: rgba(220,220,255,0.5);
	}
	
	.single-table div tr:hover
	{
	  background: rgba(255,255,255,0.3);
	}
	#item{
	  position: relative;
	  text-align: center;
	  font: normal 30px Georgia , Verdana, Arial, Helvetica;
	  width: 150px;
	  height : 50px;
	  margin : 10px 10px 10px 19px;
	  padding: 10px 10px 21px 10 px;
	}
	
	#item:hover
	{
	  background: rgba(255,255,255,0.3);
	}
	
	#manage input[type=button] {
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
	
	#manage input[type=button]:hover { 
	    box-shadow: inset 0 1px 0 rgba(255,255,255,0.6);
	}
	/* end manage button ---------------------------------------------------------*/ 
	
	#buttom{
		position:absolute;
		top:455px;
		left:300px;
	}
	
	#showblock{
		position:absolute;
		top:500px;
		left:300px;
    	background: rgba(100,100,255,0.5);
   		 padding: 4px 2px;
   		 margin: 5px 20px 0px 20px ;
   		 
	}
	
    </style>
	<%@page import="com.man.UserRecordShowDAO" %>
	<%
		String userName = (String)session.getAttribute("USER_NAME");
		String recordPage =  (String)request.getParameter("page");
		if ( recordPage == null || recordPage =="")
			recordPage = "0";
		Integer pageInteger = Integer.parseInt(recordPage);
		if ( pageInteger < 0 )
			pageInteger = 0;
		
		if ( userName == null || userName == "" )
		{
			%>
			<script type="text/javascript">
					window.location.href="../login/Error.jsp"; 
			</script>
			<% 
		}
		
		String deleteString = (String)request.getParameter("delete");
		String startDateString = (String)request.getParameter("startDate");
		String endDateString = (String)request.getParameter("endDate");
		
		UserRecordShowDAO userRecordShowDAO = new UserRecordShowDAO();
		String records = userRecordShowDAO.getRecord(userName, pageInteger, deleteString, startDateString, endDateString);
		
		String heads = (String)userRecordShowDAO.getHead();
		Integer maxIterPerPage = UserRecordShowDAO.maxItem;
	%>
	
	
    <script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDEFUdRQuTsJcVy8MRYrYwUwiGryjyBylk&sensor=false">
    </script>
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
   
   	
   
   
    <script type="text/javascript">
    

	var thisPage = <%=pageInteger%>;
	var recordString = "<%=records%>";
	var headString = "<%=heads%>";
	var splitString = "<%=userRecordShowDAO.SPLIT_STRING%>";
	var splitBigString = "<%=userRecordShowDAO.SPLIT_BIG_STRING%>";
	var coreItem = "Location";
    var headList = new Array();
    var rowList = new Array();
    var itemList = new Array();
    
    var map;
    
    
    function initialize(pos_x,pos_y) {
        var mapOptions = {
          center: new google.maps.LatLng(pos_x, pos_y),
          zoom: 12,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);
        

        map.addControl(new GLargeMapControl());
        map.addControl(new GOverviewMapControl());
        map.enableContinuousZoom();
        map.enableScrollWheelZoom();
        map.addControl(new GMapTypeControl());
        
        /*map.addControl(new GLargeMapControl());
        map.addControl(new GMapTypeControl());
        map.enableScrollWheelZoom(); 
        map.setCenter(new GLatLng(pos_x, pos_y), 10);
        map.enableDoubleClickZoom(); 
        map.enableScrollWheelZoom();
        */
    }
      
  	function CreateTable(div )
	  { 
		 var coreNumber = 0;
		for ( var i = 0 ; i < headList.length ; ++i )
			if ( headList[i] == coreItem )
				coreNumber = i;
	   	 var table=$("<div class = \"single-table\"></div>");
	     table.appendTo($(div));
		/*
	     var thead = $("<thead></thead>");
	     thead.appendTo(table);
  	 var td = $("<td >"+headList[coreNumber]+"</td>");
  	 td.appendTo(thead);	*/
  	 
  	 
	     var aniTime = 300;
	     
	     for( var i= 0 ; i < rowList.length-1; ++ i )
	   {
	    var pos = new Array();
	    pos = itemList[i][coreNumber].split(",");
	    
  		var td = $("<div >"+pos[0].substring(0,5)+","+pos[1].substring(0,5)+"</div>");
  		
  		td.attr('id','item');
  		td.attr("value",9);
  		td.val(i);
  		td.addClass("show");
  		
  		td.appendTo(table);
	        td.hover(function(){
	        	$(this).addClass("hover");
	        },function(){
	        	
	        });
	        td.animate({height:'-=35',opacity:'0.0'},0);
	        td.animate({opacity:'0.0'},i*aniTime/2);
	        td.animate({height:'+=20',opacity:'1.0'},aniTime);
	   }
	     
	  }  
      
  	function AddNextLastButton(div){
		var man_div = $("<div id = \"manage\"></div>");
		man_div.appendTo($(div));
		var last = $("<input type = \"button\" name = \"last\" value = \"Last Page\" id = \"lastbtn\" >");
		var next = $("<input type = \"button\" name = \"next\" value = \"Next Page\" id = \"nextbtn\" Style{float:\'right\'}>");
		var pageNumber = $("<font color = \"white\" size = \"10\">"+(thisPage+1)+"</font>");
		man_div.append(last).append(pageNumber).append(next);
	}
	
	function CreateShow( index , div )
	  { 
		$(".ShowItem").remove();
	    var table=$("<table class = \"single-table\">");
	    table.addClass("ShowItem");
	     table.appendTo($(div));


	     var thead = $("<thead></thead>");
	     thead.appendTo(table);
	     
	     for ( var i = 0 ; i < headList.length-1; ++i)
	    {
	    	 var td = $("<td>"+headList[i]+"</td>");
	    	 td.appendTo(thead);	 
	    }
	     
	     var tbody=$("<tbody></tbody>");
	     tbody.appendTo(table);
	     
		    var tr=$("<tr ></tr>");
	        tr.appendTo(tbody);
	        
	    	for( var j = 0 ; j < itemList[i].length-1 ; ++ j )
	    	{
	    		//add item
	    		if ( j >= headList.length -1 )
	    			break;
	    		var h = 5;
	    		if ( j ==0 ) h = 20;
	    		var td = $("<td>"+itemList[index][j].substring(0,h)+"</td>");
	    		td.appendTo(tr);
	    	}

			
	        tr.hover(function(){
	        	$(this).addClass("hover");
	        },function(){
	        	
	        });
	    	
	     $(div).append("</table>");
	  }
	   

  	
  	$(document).ready(function(){
  		//CreateTable("div#context");
  		//CreateUserInfoTable("div#context");
  		
  		
	var splitString = "<%=userRecordShowDAO.SPLIT_STRING%>";
  		headList = headString.split(splitString);
	    rowList = recordString.split(splitBigString);
  	   	for ( var i = 0 ; i < rowList.length; ++i)
 	    { 
  	   		var items = new Array();
  	   		items = rowList[i].split(splitString);
  	   		itemList.push(items)
 	    }

		CreateTable("div#context");
		AddNextLastButton("div#buttom");
		
		
  		$("div#menu ul li").hover(function(){
  			$(this).animate({left:'+=25px'}, 500);
  		}, function(){
  			$(this).animate({left:'-=25px'},500);
  		});
  		$("#sub-title").hide().show(300);
  		
  		$(".show").hover(function(){
  			CreateShow($(this).val(),"#showblock");
  		},function(){
  			
  		});
  		
  		$("#lastbtn").click(function(){
			thisPage--;
			window.location.href="../man/map.jsp?page="+ thisPage; 
		});
		
		$("#nextbtn").click(function(){
	        	thisPage++;
				window.location.href="../man/map.jsp?page="+thisPage; 
	       
		});
		
		$(".show").hover(function(){
			var text = $(this).text();
			var position = new Array();
			position = text.split(",");
			var p_x = parseFloat(position[0].substring(0,5));
			var p_y = parseFloat(position[1].substring(0,5));
			initialize(p_x,p_y);
  		},function(){
  			
  		});
  		
  	});
      
    </script>
    
    
  </head>
  <body onload="initialize(40.0, 116.32)">
    
    
    <div id="map_canvas" ></div>
        
    <!-- BackGround -->
    <div  style="width:100%;height:100%;position:fixed;z-index:-1;top:0px;left:0px;">
		<img src="img/bgimg.jpg" width="100%" height="100%" >
	</div> 
    <!-- *********  Header  ********** -->
    
    <div id="header">
        <div id="header_in">
        
        <div id="menu">
         <ul>
            <li><a href="../man/index.jsp">Home</a></li>
            <li><a href="../man/info.jsp">Information</a></li>
            <li><a href="../man/record.jsp">Record</a></li>
            <li><a href="../man/show.jsp" >Show</a></li>            
         </ul>
        </div>
        
        </div>
    </div>
    
        
       <div id="context">
    	<div id="sub-title">
    		Your Tracks
    	</div>
    	<br/>
    	<br/>
    	<br/>
    </div>
    
    <div id = "buttom" >
    </div>
    
    <div id = "showblock" >
    </div>
    
  </body>
</html>