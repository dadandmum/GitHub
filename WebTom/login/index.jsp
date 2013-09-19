<!DOCTYPE html>
<html lang="en">
	<html xmlns="http://www.w3.org/1999/xhtml">
    <head><title>JJJ Login</title>
        <meta name="author" content="AtwoodDeng" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="js/modernizr.custom.63321.js"></script>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery2.js"></script>
		<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style>
		<![endif]-->
		<style>
			@import url(http://fonts.googleapis.com/css?family=Ubuntu:400,700);
			body {
				background: #563c55 url(images/blurred.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;
				text-shadow: 0 1px 1px rgba(0,0,0,0.7);
			}
			section{
				text-align:center;
			}
			
			.form-add input[type=submit] {
			    /* Width and position */
			    width: auto;
			    height: auto;
			    padding: 20px 20px;
    			position: relative;
				vertical-align:middle;
			  
			    /* Styles */
			    border: 2px solid #0273dd; /* Fallback */
			    border: 2px solid rgba(0,0,0,0.4);
			    box-shadow:
			        inset 0 3px 0 rgba(255,255,255,0.3),
			        inset 0 20px 20px rgba(255,255,255,0.1);
			    border-radius: 12px;
			    background: #28b6c0;
			    cursor:pointer;
			  
			    /* Font styles */
			    font-family: 'Ubuntu', 'Lato', sans-serif;
			    color: white;
			    font-weight: 700;
			    font-size: 45px;
			    text-shadow: 0 -1px 0 rgba(0,0,0,0.8);
			}
			
			.form-add input[type=submit]:hover { 
			    box-shadow: inset 0 1px 0 rgba(255,255,255,0.6);
			    background: #28b6c0;
			}
			
			.form-add input[type=submit]:active { 
			    background: #289db5;
			    box-shadow: inset 0 0 3px rgba(0,0,0,0.6);
			    border-color: #000; /* Fallback */
			    border-color: rgba(0,100,100,0.9);
			}
			
						
		</style>
    </head>
    <%
    	session.setAttribute("USER_NAME", "");
    %>
    
    <body>
        <div class="container">
			
			<header>
				<p >
					<font size = "15" face="arial" color="white">Hello, welcome to home of JJJ.</font>
				</p>
				<br>

				<div class="support-note">
					<span class="note-ie">Sorry, only modern browsers.</span>
				</div>
				
			</header>
			
			<section class="main">
				<form class="form-3" method="post" id = "login" action="judge.jsp">
				    <p class="clearfix">
				        <label for="login">Username</label>
				        <input type="text" name="login" id="login" placeholder="Username">
				    </p>
				    <p class="clearfix">
				        <label for="password">Password</label>
				        <input type="password" name="password" id="password" placeholder="Password"> 
				    </p>
				    <p class="clearfix">
				        <input type="checkbox" name="remember" id="remember">
				        <label for="remember">Remember me</label>
				    </p>
				    <p class="clearfix">
				        <input type="submit" name="submit" value="Sign in">
				    </p>       
				</form>
			</section>
			
			
			<section class="new"  >
				<form class="form-add" id= "new" method= "post"  action = "register.jsp">
				    <p class="clearfix">
				        <input type="submit" name="submit" value="Join Us!">
				    </p>       
				</form>
			</section>
			
        </div>

    </body>
</html>