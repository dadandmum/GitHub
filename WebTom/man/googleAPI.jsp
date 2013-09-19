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
		left: 275px;
		buttom: 200px;
		right: 100px;
      	height: 65%;
      	width: 50%;
      	
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
	
	
    </style>
    <script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDEFUdRQuTsJcVy8MRYrYwUwiGryjyBylk&sensor=false">
    </script>
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
   
    <script type="text/javascript">
      function initialize() {
        var mapOptions = {
          center: new google.maps.LatLng(39.990168, 116.295304),
          zoom: 12,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);

        map.addControl(new GLargeMapControl());
        map.addControl(new GMapTypeControl());
        map.enableScrollWheelZoom(); 
        map.setCenter(new GLatLng(39.990168, 116.295304), 10);
        map.enableDoubleClickZoom(); 
        map.enableScrollWheelZoom();
        
      }
      

  	
  	$(document).ready(function(){
  		//CreateTable("div#context");
  		//CreateUserInfoTable("div#context");
  		$("div#menu ul li").hover(function(){
  			$(this).animate({left:'+=25px'}, 500);
  		}, function(){
  			$(this).animate({left:'-=25px'},500);
  		});
  		$("#sub-title").hide().show(300);
  	});
      
    </script>
  </head>
  <body onload="initialize()">
    
    
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
    		Your Track
    	</div>
    </div>
    
  </body>
</html>