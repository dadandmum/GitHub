<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>user info</title>
    
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
    
	</style>
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
    <div  style="width:100%;height:100%;position:absolute;z-index:-1;top:0px;left:0px;">
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
    
    <div id="context">
    	<img src="img/bgimg.jpg" width="100%" height="100%" >
    </div>
    
    <!-- *********  Main part (slider)  **********
    
        
        <div id="main_part">
            <div id="main_part_in">
        
            <h2>Free minimalistic HTML template</h2>
            
            <p>That’s right, this template is absolutely for free for any personal or commercial project</p>
            
            </div>
            
            
            <div class="button_main">
                <div class="pxline"></div>
                <a href="download.html" class="button_dark">DOWNLOAD</a>
            </div>
            
        </div>
        
         -->
        
        
        <!-- *********  Content  ********** 
        
        <div id="content">
            
            <div class="thirds">
                <h3>Hey, is it responsive?</h3>
                <p>No. Sorry, it’s not (yet). Stay tuned for future updates! There should also be WP version soon, which will totally be responsive.</p>
            </div>
            
            <div class="thirds">
                <h3>Looking for PSD?</h3>
                <p>If you want to play with the design and make some more-drastic changes, you might need the PSD files. You can purchase them <a href="http://themeforest.net/item/nina-minimalist-psd-theme/4071242?ref=Flay">here</a>.</p>
            </div>
            
            <div class="thirds">
                <h3>How about WordPress?</h3>
                <p>Working on it! It probably won’t be for free, but for about $20. If you want anything specific in the WP version, <a href="mailto:vilem@ries.cz">contact me</a>!</p>
            </div>
            
            <hr class="cleanit">
            
            <div class="banner1">
                <p>The <b>WordPress version</b> will be released in about 30 days<p>
                <a href="download.html" class="button_dark">GRAB IT HERE</a>
            </div>
                -->
                
            <!-- ****  Recent works  *****      
            
            <h3>Our recent work</h3>
            
            <div class="fourths_portfolio">
                <h4>Portfolio item 1<br>
                <span>see detail</span>
                </h4>
                <a href="#"><img src="img/portfolio1.jpg" alt="item1"></a>
            </div>
            
            <div class="fourths_portfolio">
                <h4>Portfolio item 2<br>
                <span>see detail</span>
                </h4>
                <a href="#"><img src="img/portfolio2.jpg" alt="item2"></a>
            </div>
            
            <div class="fourths_portfolio">
                <h4>Portfolio item 3<br>
                <span>see detail</span>
                </h4>
                <a href="#"><img src="img/portfolio3.jpg" alt="item3"></a>
            </div>
            
            <div class="fourths_portfolio">
                <h4>Portfolio item 4<br>
                <span>see detail</span>
                </h4>
                <a href="#"><img src="img/portfolio4.jpg" alt="item4"></a>
            </div>
            
            <hr class="cleanit">
            
            <p class="youlike">Do you like what you see? Would like to <a href="ourwork.html">see more</a> or even <a href="contact.html">contact us</a> and get started on your project? Or are you thinking about <a href="cats.html">buying one of our cats</a>?</p>
            
            <div class="cara"></div>
            
            -->   
            <!-- ****  About & Testimonials  ***** 
            
            
            <div class="about_blok">
                <h3>About Us</h3>
                <p class="about">We are a creative team of young designers usually filling text boxes with lorem ipsum, but not this time! Dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
                
                <a href="about.html" class="button_light">LEARN MORE</a>
            </div>
            
            <div class="testimonials">
                <div class="quote">Working with these guys was absolutely amazing. I swear, they can read minds! One thing, tho... their cat is cute and everything, but they shouldn’t be talking about her so often, it’s kinda creepy. Anyway, it was pleasure to work with them!</div>
                
                <div class="quote">I didn't really like working with this company/guy (I'm still not sure if it's one-man show or two-man theatre) at all. Their cat is fine, but seriously, just shut the fuck up about her, could you?</div>
                
                <div class="quote">Working with these guys was the best thing I have ever done in my life. They have beautiful cat. This is stupid, why don't just use the lorem ipsum :/.</div>
                <span class="testimonials_bottom"></span>
                
                <ul class="controls">
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                </ul>
                <span class="by">That's what she said!</span>
            </div>
            
        </div>
        
    --> 
    
    <!-- *********  Footer  **********
    
    <hr class="cleanit">
    
     <div id="footer">
        <div id="footer_in">
            
            <p><a href="http://creativecommons.org/licenses/by/3.0/">CC Attribution 3.0 Unported</a> &mdash; allowed for commercial and non-commercial use</p>
            <span>Author: <a href="http://ries.cz">Vilém Ries</a></span>

        
        </div>
    </div>
          -->
<script>
// script for testimonial' tabs
$(function() {
    $("ul.controls").tabs("div.testimonials > div");
});
</script>

</body>
</html>
