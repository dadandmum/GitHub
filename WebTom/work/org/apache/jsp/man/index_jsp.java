/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2013-09-19 06:23:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.man;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.catalina.User;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"refresh\" content=\"5;url=../man/record.jsp\">\n");
      out.write("    <title>Home</title> \n");
      out.write("   <!-- <link rel=\"stylesheet\" href=\"reset.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"styl.css\" type=\"text/css\"> --> \n");
      out.write("        \n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>\n");
      out.write("\t\n");
      out.write("\t<head>\n");
      out.write("\t<style type=\"text/css\">\n");
      out.write("\t#menu {\n");
      out.write("\tfont-family:Georgia, serif;\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: 50px;\n");
      out.write("\tleft: -20px;\n");
      out.write("\tfont-size: 115%;\n");
      out.write("\t/*background: url('img/menu_cut.jpg') no-repeat scroll right;*/\n");
      out.write("\tmargin-right: 0px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    #menu ul li {\n");
      out.write("\t/*float: left;*/\n");
      out.write("\tposition:relative;\n");
      out.write("\tdisplay: inline;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    #menu ul li a {\n");
      out.write("\ttext-decoration: none;\n");
      out.write("\tcolor: #101115;\n");
      out.write("\ttext-transform: uppercase;\n");
      out.write("\tfont-weight: 300;\n");
      out.write("\tletter-spacing: 1px;\n");
      out.write("\tdisplay: block;\n");
      out.write("\tpadding: 29px 40px 0 40px;\n");
      out.write("\theight: 46px;\n");
      out.write("\tbackground-color: #fff;\n");
      out.write("\tfilter:alpha(opacity=50); \n");
      out.write("\t-moz-opacity:0.5; \n");
      out.write("\topacity:0.5;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    #menu ul li a:hover {\n");
      out.write("\tbackground-color: #f3f3f3;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    #menu ul li a.active {\n");
      out.write("\tbackground: none;\n");
      out.write("\tcolor: rgb(200,200,245);\n");
      out.write("\tfilter:alpha(opacity=90); \n");
      out.write("\t-moz-opacity:0.9; \n");
      out.write("\topacity:0.9;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    #context {\n");
      out.write("\tfont-family:Georgia, serif;\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: 50px;\n");
      out.write("\tleft: 300px;\n");
      out.write("\tbuttom: 200px;\n");
      out.write("\tright: 100px;\n");
      out.write("\tfont-size: 100%;\n");
      out.write("\t/*background: url('img/menu_cut.jpg') no-repeat scroll right;*/\n");
      out.write("\tmargin-right: 0px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .blue-back{\n");
      out.write("\t    background:#28b6c0;\n");
      out.write("\t    background:-webkit-gradient(linear,left top,left bottom,color-stop(#80a9da,0),color-stop(#6f97c5,1));\n");
      out.write("\t    background:-webkit-linear-gradient(top, #80a9da 0%, #6f97c5 100%);\n");
      out.write("\t    background:-moz-linear-gradient(top, #28b6c0 0%, #28b6c0 100%);\n");
      out.write("\t    background:-o-linear-gradient(top, #80a9da 0%, #6f97c5 100%);\n");
      out.write("\t    background:linear-gradient(top, #80a9da 0%, #6f97c5 100%);\n");
      out.write("\t    filter:progid:DXImageTransform.Microsoft.gradient( startColorstr='#80a9da', endColorstr='#6f97c5',GradientType=0 );\n");
      out.write("\t    padding-left:20px;\n");
      out.write("\t    padding-right:80px;\n");
      out.write("\t    height:75px;\n");
      out.write("\t    display:inline-block;\n");
      out.write("\t    position:relative;\n");
      out.write("\t    border:1px solid #5d81ab;\n");
      out.write("\t    -webkit-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);\n");
      out.write("\t    -moz-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);\n");
      out.write("\t    box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2), 0px 0px 0px 4px rgba(188,188,188,0.5);\n");
      out.write("\t    -webkit-border-radius:10px;\n");
      out.write("\t    -moz-border-radius:10px;\n");
      out.write("\t    border-radius:10px;\n");
      out.write("\t    float:left;\n");
      out.write("\t    clear:both;\n");
      out.write("\t    margin:10px 0px;\n");
      out.write("\t    overflow:hidden;\n");
      out.write("\t    -webkit-transition:all 0.3s linear;\n");
      out.write("\t    -moz-transition:all 0.3s linear;\n");
      out.write("\t    -o-transition:all 0.3s linear;\n");
      out.write("\t    transition:all 0.3s linear;\n");
      out.write("\t    text-decoration: blink\n");
      out.write("\t}\n");
      out.write("\t.blue-back-text{\n");
      out.write("\t    padding-top:5px;\n");
      out.write("\t    display:block;\n");
      out.write("\t    font-family: 'Ubuntu', 'Lato', sans-serif;\n");
      out.write("\t\tcolor: white;\n");
      out.write("\t\tfont-weight: 700;\n");
      out.write("\t    font-size:45px;\n");
      out.write("\t    white-space:nowrap;\n");
      out.write("\t    text-shadow:0px 1px 1px rgba(255,255,255,0.3);\n");
      out.write("\t    color:#fff;\n");
      out.write("\t    -webkit-transition:all 0.2s linear;\n");
      out.write("\t    -moz-transition:all 0.2s linear;\n");
      out.write("\t    -o-transition:all 0.2s linear;\n");
      out.write("\t    transition:all 0.2s linear;\n");
      out.write("\t}\n");
      out.write("\t.blue-back-slide-text{\n");
      out.write("\t    position:absolute;\n");
      out.write("\t    height:100%;\n");
      out.write("\t    top:0px;\n");
      out.write("\t    right:52px;\n");
      out.write("\t    width:0px;\n");
      out.write("\t    background:#63707e;\n");
      out.write("\t    text-shadow:0px -1px 1px #363f49;\n");
      out.write("\t    color:#bbbbbb;\n");
      out.write("\t    font-family: 'Ubuntu', 'Lato', sans-serif;\n");
      out.write("\t\tcolor: white;\n");
      out.write("\t\tfont-weight: 700;\n");
      out.write("\t    font-size:35px;\n");
      out.write("\t    white-space:nowrap;\n");
      out.write("\t    text-transform:uppercase;\n");
      out.write("\t    text-align:left;\n");
      out.write("\t    text-indent:10px;\n");
      out.write("\t    overflow:hidden;\n");
      out.write("\t    line-height:65px;\n");
      out.write("\t    -webkit-box-shadow:-1px 0px 1px rgba(255,255,255,0.4), 1px 1px 2px rgba(0,0,0,0.2) inset;\n");
      out.write("\t    -moz-box-shadow:-1px 0px 1px rgba(255,255,255,0.4), 1px 1px 2px rgba(0,0,0,0.2) inset;\n");
      out.write("\t    box-shadow:-1px 0px 1px rgba(255,255,255,0.4), 1px 1px 2px rgba(0,0,0,0.2) inset;\n");
      out.write("\t    -webkit-transition:width 0.3s linear;\n");
      out.write("\t    -moz-transition:width 0.3s linear;\n");
      out.write("\t    -o-transition:width 0.3s linear;\n");
      out.write("\t    transition:width 0.3s linear;\n");
      out.write("\t}\n");
      out.write("\t.blue-back-icon-right{\n");
      out.write("\t    position:absolute;\n");
      out.write("\t    right:0px;\n");
      out.write("\t    top:0px;\n");
      out.write("\t    height:100%;\n");
      out.write("\t    width:52px;\n");
      out.write("\t    border-left:1px solid #5d81ab;\n");
      out.write("\t    -webkit-box-shadow:1px 0px 1px rgba(255,255,255,0.4) inset;\n");
      out.write("\t    -moz-box-shadow:1px 0px 1px rgba(255,255,255,0.4) inset;\n");
      out.write("\t    box-shadow:1px 0px 1px rgba(255,255,255,0.4) inset;\n");
      out.write("\t}\n");
      out.write("\t.blue-back-icon-right span{\n");
      out.write("\t    width:38px;\n");
      out.write("\t    height:38px;\n");
      out.write("\t    opacity:0.7;\n");
      out.write("\t    position:absolute;\n");
      out.write("\t    left:50%;\n");
      out.write("\t    top:50%;\n");
      out.write("\t    margin:-20px 0px 0px -20px;\n");
      out.write("\t    background:transparent url(../images/arrow_right.png) no-repeat 50% 55%;\n");
      out.write("\t    -webkit-transition:all 0.3s linear;\n");
      out.write("\t    -moz-transition:all 0.3s linear;\n");
      out.write("\t    -o-transition:all 0.3s linear;\n");
      out.write("\t    transition:all 0.3s linear;\n");
      out.write("\t}\n");
      out.write("\t.blue-back:hover{\n");
      out.write("\t    padding-right:430px;\n");
      out.write("\t    -webkit-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);\n");
      out.write("\t    -moz-box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);\n");
      out.write("\t    box-shadow:0px 1px 1px rgba(255,255,255,0.8) inset, 1px 1px 3px rgba(0,0,0,0.2);\n");
      out.write("\t}\n");
      out.write("\t.blue-back:hover .blue-back-text{\n");
      out.write("\t    text-shadow:0px 1px 1px #5d81ab;\n");
      out.write("\t    color:#fff;\n");
      out.write("\t}\n");
      out.write("\t.blue-back:hover .blue-back-slide-text{\n");
      out.write("\t    width:350px;\n");
      out.write("\t}\n");
      out.write("\t.blue-back:hover .blue-back-icon-right span{\n");
      out.write("\t    opacity:1;\n");
      out.write("\t}\n");
      out.write("\t.blue-back:active{\n");
      out.write("\t    position:relative;\n");
      out.write("\t    top:1px;\n");
      out.write("\t    background:#5d81ab;\n");
      out.write("\t    -webkit-box-shadow:1px 1px 2px rgba(0,0,0,0.4) inset;\n");
      out.write("\t    -moz-box-shadow:1px 1px 2px rgba(0,0,0,0.4) inset;\n");
      out.write("\t    box-shadow:1px 1px 2px rgba(0,0,0,0.4) inset;\n");
      out.write("\t    border-color:#80a9da;\n");
      out.write("\t}\n");
      out.write("    \n");
      out.write("\t</style>\n");
      out.write("\t\n");
      out.write("\t");
      com.UserBase user = null;
      synchronized (session) {
        user = (com.UserBase) _jspx_page_context.getAttribute("user", javax.servlet.jsp.PageContext.SESSION_SCOPE);
        if (user == null){
          user = new com.UserBase();
          _jspx_page_context.setAttribute("user", user, javax.servlet.jsp.PageContext.SESSION_SCOPE);
        }
      }
      out.write('\n');
      out.write('	');
 
		//String  loginStr = request.getParameter("userName");
		String userName = (String)session.getAttribute("USER_NAME");
		if ( userName == null || userName == "" )
		{
			
      out.write("\n");
      out.write("\t\t\t<script type=\"text/javascript\">\n");
      out.write("   \t\t\t\twindow.location.href=\"../login/Error.jsp\"; \n");
      out.write("\t\t\t</script>\n");
      out.write("\t\t\t");
 
		}
		
	
      out.write("\n");
      out.write("\t<script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t$(document).ready(function(){\n");
      out.write("\t\t$(\"div#menu ul li\").hover(function(){\n");
      out.write("\t\t\t$(this).animate({left:'+=30px'}, 500);\n");
      out.write("\t\t}, function(){\n");
      out.write("\t\t\t$(this).animate({left:'-=30px'},500);\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("\t</script>\n");
      out.write("\t\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body  >\n");
      out.write("    \n");
      out.write("    <!-- BackGround -->\n");
      out.write("    <div  style=\"width:100%;height:100%;position:fixed;z-index:-1;top:0px;left:0px;\">\n");
      out.write("\t\t<img src=\"../bgp.jpg\" width=\"100%\" height=\"100%\" >\n");
      out.write("\t</div> \n");
      out.write("    <!-- *********  Header  ********** -->\n");
      out.write("    \n");
      out.write("    <div id=\"header\">\n");
      out.write("        <div id=\"header_in\">\n");
      out.write("        \n");
      out.write("        <div id=\"menu\">\n");
      out.write("         <ul>\n");
      out.write("            <li><a href=\"../man/index.jsp\" class=\"active\">Home</a></li>\n");
      out.write("            <li><a href=\"../man/info.jsp\">Information</a></li>\n");
      out.write("            <li><a href=\"../man/record.jsp\">Record</a></li>\n");
      out.write("            <li><a href=\"../man/show.jsp\" >Show</a></li>            \n");
      out.write("         </ul>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div id=\"context\">\n");
      out.write("\t\t<font color = \"white\" size = \"30\">Welcome home ");
      out.print(userName );
      out.write("!</font>\n");
      out.write("\t\t <a href=\"javascript:void((function(s,d,e,r,l,p,t,z,c)\n");
      out.write("\t\t\t {var%20f='http://v.t.sina.com.cn/share/share.php?appkey='\n");
      out.write("\t\t\t ,u=z||d.location,p=['&url=',e(u),'&title=',e(t||d.title),'&source='\n");
      out.write("\t\t\t ,e(r),'&sourceUrl=',e(l),'&content=',c||'gb2312','&pic='\n");
      out.write("\t\t\t ,e(p||'')].join('');function%20a()\n");
      out.write("\t\t\t {if(!window.open([f,p].join(''),'mb',\n");
      out.write("\t\t\t ['toolbar=0,status=0,resizable=1,width=440,height=430,left=',\n");
      out.write("\t\t\t (s.width-440)/2,',top=',(s.height-430)/2].join('')))u.href=[f,p].join('');};\n");
      out.write("\t\t\t if(/Firefox/.test(navigator.userAgent))setTimeout(a,0);\n");
      out.write("\t\t\t else%20a();})(screen,document,encodeURIComponent,'','',''\n");
      out.write("\t\t\t ,'JJJ is wonderful!!!!!!!come and play with me~~~~~http://dadandmum.vicp.cc:81','location','gb2312'));\">\n");
      out.write("\t\t\t <img src = \"../man/img/sina.png\" width = 50px height=50px></a>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t<div class=\"button-wrapper\" >\n");
      out.write("\t\t\t<a href=\"../login/index.jsp\" class=\"blue-back\">\n");
      out.write("\t\t\t\t<span class=\"blue-back-text\">log out</span> \n");
      out.write("\t\t\t\t<span class=\"blue-back-slide-text\">log out now</span>\n");
      out.write("\t\t\t\t<span class=\"blue-back-icon-right\"><span></span></span>\n");
      out.write("\t\t\t</a>\n");
      out.write("\t\t</div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("  \n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
