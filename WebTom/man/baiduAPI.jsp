<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=988fe5f90a25d9f9c4c08054d1daa9a8"></script>
<title>Map</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script>

	$(document).ready(function(){
	
		alert(log);
		$("div#menu ul li").hover(function(){
			$(this).animate({left:'+=30px'}, 500);
		}, function(){
			$(this).animate({left:'-=30px'},500);
		});
	});
	</script>


</head>
<body>

   
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
    	<img src="img/bgimg.jpg" width="100%" height="100%" >
    </div>

	<div id="allmap"></div>
</body>
</html>
<script type="text/javascript">

// 百度地图API功能
var map = new BMap.Map("allmap");
var point = new BMap.Point(116.404, 39.915);
map.centerAndZoom(point,15);
var contextMenu = new BMap.ContextMenu();
var txtMenuItem = [
  {
   text:'放大',
   callback:function(){map.zoomIn()}
  },
  {
   text:'缩小',
   callback:function(){map.zoomOut()}
  },
  {
   text:'放置到最大级',
   callback:function(){map.setZoom(18)}
  },
  {
   text:'查看全国',
   callback:function(){map.setZoom(4)}
  },
  {
   text:'在此添加标注',
   callback:function(p){
    var marker = new BMap.Marker(p), px = map.pointToPixel(p);
    map.addOverlay(marker);
   }
  }
 ];


 for(var i=0; i < txtMenuItem.length; i++){
  contextMenu.addItem(new BMap.MenuItem(txtMenuItem[i].text,txtMenuItem[i].callback,100));
  if(i==1 || i==3) {
   contextMenu.addSeparator();
  }
 }
 map.addContextMenu(contextMenu);
</script>
