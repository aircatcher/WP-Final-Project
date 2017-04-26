package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.Image;
import java.util.ArrayList;
import Model.News;
import Model.DB_Connect_Admin;
import Model.Product;
import Model.User;
import Model.DB_Connect_Admin;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>WPGS | Welcome</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\"/>\n");
      out.write("        ");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\"/>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\"/>\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"http://designshack.net/favicon.ico\">\r\n");
      out.write("<link rel=\"icon\" href=\"http://designshack.net/favicon.ico\">\r\n");
      out.write("<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<link href=\"assets/css/icofont.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<link href=\"assets/css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<link href=\"assets/css/animations.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<link href=\"assets/css/navbar.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<link href=\"assets/css/searchNav.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<link href=\"assets/css/full-slider.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<link href=\"assets/css/marquee.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<link href=\"assets/css/scrollbar.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("<style>\r\n");
      out.write("    body {font-family: 'Titillium Web', sans-serif;}\r\n");
      out.write("    .carousel-inner > .item > img,\r\n");
      out.write("    .carousel-inner > .item > a > img {\r\n");
      out.write("        width: 80%;\r\n");
      out.write("        height: 100;\r\n");
      out.write("        margin: auto;\r\n");
      out.write("    }\r\n");
      out.write("</style>");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <a name=\"top\"/>\n");
      out.write("        <!-- Check user type -->\n");
      out.write("        ");

            User user;
            String type = null;
            
            // if someone has logged in
            if(session.getAttribute("user") != null){
                user = (User) session.getAttribute("user");
                type = user.getType();
            } else{
                user = null;
            }
        
      out.write("\n");
      out.write("        \n");
      out.write("        <!-- ******************** NAVIGATION BAR ******************** -->\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-");

            if(DB_Connect_Admin.getMenuLocation() == 0){
            
      out.write("top");

                } else if(DB_Connect_Admin.getMenuLocation() == 1){
            
      out.write("bottom");

                }
            
      out.write("\" style=\"z-index:20\">\n");
      out.write("            <div class=\"container-fluid\" style=\"position:relative;z-index:2\">\n");
      out.write("                <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" style=\"height:34px\" data-toggle=\"collapse\">\n");
      out.write("                        <a href=\"#search\">\n");
      out.write("                            <span class=\"glyphicon glyphicon-search\" style=\"top:0\"></span>\n");
      out.write("                        </a>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                        <img alt=\"Brand\" src=\"assets/images/logo/logo.png\" style=\"width:50px\">\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"active\"><a href=\"#\"><span class=\"glyphicon glyphicon-home\"></span> Home</a></li>\n");
      out.write("                        <li><a href=\"products.jsp\"><span class=\"glyphicon glyphicon-info-sign\"></span> Products</a></li>\n");
      out.write("                        <li><a href=\"about.jsp\"><span class=\"glyphicon glyphicon-info-sign\"></span> About Us</a></li>\n");
      out.write("                        <li><a href=\"news.jsp\"><span class=\"glyphicon glyphicon-list-alt\"></span> News</a></li>\n");
      out.write("                        ");

                            if(session.getAttribute("user") == null){
                        
      out.write("\n");
      out.write("                        <li class=\"hidden-lg hidden-md hidden-sm\"><a href=\"settings.jsp\"><span class=\"glyphicon glyphicon-cog\"></span> Settings</a></li>\n");
      out.write("                        <li class=\"hidden-lg hidden-md hidden-sm\"><a href=\"admin/index.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span> Login/Register</a></li>\n");
      out.write("                        ");

                            } else { String name = user.getName();
                        
      out.write("\n");
      out.write("                        <li class=\"dropdown hidden-lg hidden-md hidden-sm\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" data-hover=\"dropdown\" data-delay=\"1000\" data-close-others=\"false\">\n");
      out.write("                                <span class=\"glyphicon glyphicon-user\"></span> ");
      out.print(name);
      out.write(" <b class=\"caret\"></b>\n");
      out.write("                            </a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"admin/index.jsp\">Dashboard</a></li>\n");
      out.write("                                <li><a href=\"#\">Log Out</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right hidden-xs\">\n");
      out.write("                        <li><a href=\"#search\"><span class=\"glyphicon glyphicon-search\"></span> Search</a></li>\n");
      out.write("                        ");

                            if(user == null){
                        
      out.write("\n");
      out.write("                        <li><a href=\"admin/index.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span> Login/Register</a></li>\n");
      out.write("                        ");

                            }else{
                                String name = user.getName();
                        
      out.write("\n");
      out.write("                        <li class=\"dropdown hidden-xs\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" data-hover=\"dropdown\" data-delay=\"1000\" data-close-others=\"false\">\n");
      out.write("                                <span class=\"glyphicon glyphicon-user\"></span> ");
      out.print(name);
      out.write(" <b class=\"caret\"></b>\n");
      out.write("                            </a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <a href=\"admin/index.jsp\" class=\"btn btn-default btn-flat\" style=\"width:100%;text-decoration:none\">Dashboard</a>\n");
      out.write("                                <form action=\"logout\" method=\"POST\">\n");
      out.write("                                    <input type=\"hidden\" name=\"id\" value=\"");
      out.print(user.getId());
      out.write("\"/>\n");
      out.write("                                    <input class=\"btn btn-default btn-flat\" type=\"submit\" value=\"Log Out\" style=\"width:100%\">\n");
      out.write("                                </form>\n");
      out.write("                            </ul>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div><!-- /.navbar-collapse -->\n");
      out.write("            <!--Second row navbar-->\n");
      out.write("            <div class=\"navbarScroll hidden-xs\">\n");
      out.write("                <ul class=\"nav navbar-nav\" style=\"position:absolute;width:100%;left:0;top:66%;\">\n");
      out.write("                    <li style=\"position:relative;z-index:+1\">\n");
      out.write("                        <font color=\"#9D9D9D\">\n");
      out.write("                            <table style=\"background-color:#222;width:110px\">\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;News Feed:</td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
      out.write("                        </font>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"marquee\" style=\"position:absolute;left:134px;top:66%;height:105%\">\n");
      out.write("                    <ul class=\"nav navbar-nav\" >\n");
      out.write("                        <li class=\"newsfeed\"><font color=\"WHITE\"><b>");
      out.print(DB_Connect_Admin.getLatestNews().getName());
      out.write("</b></font></li>\n");
      out.write("                        <li class=\"newsfeed\"><font color=\"WHITE\"><b>");
      out.print(DB_Connect_Admin.getLatestNews2().getName());
      out.write("</b></font></li>\n");
      out.write("                        <li class=\"newsfeed\"><font color=\"WHITE\"><b>");
      out.print(DB_Connect_Admin.getLatestNews3().getName());
      out.write("</b></font></li>\n");
      out.write("                    </ul>\n");
      out.write("                 </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div id=\"search\" style=\"z-index:+25\">\n");
      out.write("            <button type=\"button\" class=\"close\">×</button>\n");
      out.write("            <form action=\"\" method=\"GET\">\n");
      out.write("                <input type=\"search\" value=\"\" placeholder=\"What do you want to search?\" />\n");
      out.write("                <button type=\"submit\" class=\"btn btn-default\">Search</button></center>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <!-- ************************ HEADER ************************ -->\n");
      out.write("        <div id=\"headerWrap\">\n");
      out.write("            <div id=\"headerLogo\">\n");
      out.write("                <div id=\"headerCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                    <!-- Indicators -->\n");
      out.write("                    <ol class=\"carousel-indicators\">\n");
      out.write("                        <li data-target=\"#headerCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                        <li data-target=\"#headerCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("                        <li data-target=\"#headerCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("                        <li data-target=\"#headerCarousel\" data-slide-to=\"3\"></li>\n");
      out.write("                    </ol>\n");
      out.write("\n");
      out.write("                    ");

                        ArrayList<Integer> imageList = DB_Connect_Admin.getSlideshowImage();

                        Image image1;
                        Image image2;
                        Image image3;
                        Image image4;
                        image1 = DB_Connect_Admin.getImage(1);
                        image2 = DB_Connect_Admin.getImage(2);
                        image3 = DB_Connect_Admin.getImage(3);
                        image4 = DB_Connect_Admin.getImage(4);
                    
      out.write("\n");
      out.write("                    <!-- Wrapper for slides -->\n");
      out.write("                    <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("                        <div class=\"item active\">\n");
      out.write("                            <img src=\"");
      out.print(image1.getUrl());
      out.write("\" alt=\"Chania\" style=\"height:100%;width:auto;position:absolute;top:-100%;bottom:-100%;left:-100%;right:-100%;margin:auto;\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                             <img src=\"");
      out.print(image2.getUrl());
      out.write("\" alt=\"Chania\" style=\"height:100%;width:auto;position:absolute;top:-100%;bottom:-100%;left:-100%;right:-100%;margin:auto;\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <img src=\"");
      out.print(image3.getUrl());
      out.write("\" alt=\"Flower\" style=\"height:100%;width:auto;position:absolute;top:-100%;bottom:-100%;left:-100%;right:-100%;margin:auto;\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                             <img src=\"");
      out.print(image4.getUrl());
      out.write("\" alt=\"Flower\" style=\"height:100%;width:auto;position:absolute;top:-100%;bottom:-100%;left:-100%;right:-100%;margin:auto;\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- Left and right controls -->\n");
      out.write("                    <a class=\"left carousel-control\" href=\"#headerCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                        <div style=\"position:absolute;top:48%;left:10%\">\n");
      out.write("                            <span class=\"glyphicon glyphicon-menu-left\" aria-hidden=\"true\"></span>\n");
      out.write("                            <span class=\"sr-only\">Previous</span>\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                    <a class=\"right carousel-control\" href=\"#headerCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("                        <div style=\"position:absolute;top:48%;right:10%\">\n");
      out.write("                            <span class=\"glyphicon glyphicon-menu-right\" aria-hidden=\"true\"></span>\n");
      out.write("                            <span class=\"sr-only\">Next</span>\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <!-- ************************ CONTENT *********************** -->\n");
      out.write("        <div class=\"content\" style=\"padding:15px\">\n");
      out.write("            <!-- Product highlight -->\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-4 col-md-4\">\n");
      out.write("                    ");

                        // get product for highlight
                        Product product = DB_Connect_Admin.getRandomProduct();
                    
      out.write("\n");
      out.write("                    <div class=\"thumbnail\">\n");
      out.write("                        <div class=\"caption\">\n");
      out.write("                            <center>\n");
      out.write("                            <h2>Product Highlight</h2>\n");
      out.write("                            <br>\n");
      out.write("                                <img src=\"");
      out.print(product.getUrl());
      out.write("\" alt=\"Image Not Found\" width=\"250\">\n");
      out.write("                                <h4>");
      out.print(product.getName());
      out.write("</h4>\n");
      out.write("                                <h4>");
      out.print(product.getDate());
      out.write("</h4\n");
      out.write("                                <h4>Rp. ");
      out.print(product.getPrice());
      out.write("</h4>\n");
      out.write("                            </center>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>   \n");
      out.write("                <div class=\"col-sm-8 col-md-8\">\n");
      out.write("                    <div class=\"thumbnail\">\n");
      out.write("                        <div class=\"caption\">\n");
      out.write("                            ");

                                // get latest news
                                News news = DB_Connect_Admin.getLatestNews();
                            
      out.write("\n");
      out.write("                            <center>\n");
      out.write("                                <h2>Latest News</h2>\n");
      out.write("                                <h4>");
      out.print(news.getName());
      out.write("</h4>\n");
      out.write("                                <p>");
      out.print(news.getNews());
      out.write("</p>\n");
      out.write("                            </center>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>   \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<HTML>\r\n");
      out.write("    <HEAD>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\"/>\r\n");
      out.write("    </HEAD>\r\n");
      out.write("    <BODY>\r\n");
      out.write("        ");

            String facebookLink = DB_Connect_Admin.getFacebookLink();
            String twitterLink = DB_Connect_Admin.getTwitterLink();
            String address = DB_Connect_Admin.getAddress();
            String phone = DB_Connect_Admin.getPhone();
        
      out.write("\r\n");
      out.write("        <div id=\"footerLock\">\r\n");
      out.write("            <div id=\"footerWrap\">\r\n");
      out.write("                <center style=\"padding-top:15px\">\r\n");
      out.write("                    <a href=\"#top\" class=\"aButton\" style=\"color:#fff\">[Back to Top]</a>\r\n");
      out.write("                </center>\r\n");
      out.write("                <div id=\"footer\">\r\n");
      out.write("                    <div class=\"footerFloat\">\r\n");
      out.write("                        <br/>\r\n");
      out.write("                        <center>\r\n");
      out.write("                            <h4><b>RSS FEED</b></h4>\r\n");
      out.write("                            <br/>\r\n");
      out.write("                            <script type=\"text/javascript\">document.write('\\x3Cscript type=\"text/javascript\" src=\"' + ('https:' == document.location.protocol ? 'https://' : 'http://') + 'feed.mikle.com/js/rssmikle.js\">\\x3C/script>');</script><script type=\"text/javascript\">(function() {var params = {rssmikle_url: \"http://feeds.ign.com/ign/all\",rssmikle_frame_width: \"300\",rssmikle_frame_height: \"330\",frame_height_by_article: \"0\",rssmikle_target: \"_blank\",rssmikle_font: \"Arial, Helvetica, sans-serif\",rssmikle_font_size: \"12\",rssmikle_border: \"off\",responsive: \"off\",rssmikle_css_url: \"\",text_align: \"left\",text_align2: \"left\",corner: \"off\",scrollbar: \"on\",autoscroll: \"on\",scrolldirection: \"up\",scrollstep: \"3\",mcspeed: \"20\",sort: \"Off\",rssmikle_title: \"off\",rssmikle_title_sentence: \"\",rssmikle_title_link: \"\",rssmikle_title_bgcolor: \"#0066FF\",rssmikle_title_color: \"#FFFFFF\",rssmikle_title_bgimage: \"\",rssmikle_item_bgcolor: \"#222222\",rssmikle_item_bgimage: \"\",rssmikle_item_title_length: \"55\",rssmikle_item_title_color: \"#179B77\",rssmikle_item_border_bottom: \"on\",rssmikle_item_description: \"on\",item_link: \"off\",rssmikle_item_description_length: \"150\",rssmikle_item_description_color: \"#FFFFFF\",rssmikle_item_date: \"gl1\",rssmikle_timezone: \"Etc/GMT\",datetime_format: \"%b %e, %Y %l:%M %p\",item_description_style: \"text+tn\",item_thumbnail: \"full\",item_thumbnail_selection: \"auto\",article_num: \"15\",rssmikle_item_podcast: \"off\",keyword_inc: \"\",keyword_exc: \"\"};feedwind_show_widget_iframe(params);})();</script><div style=\"font-size:10px; text-align:center; width:300px;\"><a href=\"http://feed.mikle.com/\" target=\"_blank\" style=\"color:#CCCCCC;\"><font color=\"transparent\">RSS Feed Widget</font></a><!--Please display the above link in your web page according to Terms of Service.--></div>\r\n");
      out.write("                        </center>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"footerFloat\">\r\n");
      out.write("                        <br/>\r\n");
      out.write("                        <center>\r\n");
      out.write("                            <p></p>\r\n");
      out.write("                        </center>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"footerFloat\">\r\n");
      out.write("                        <br/>\r\n");
      out.write("                        <center>\r\n");
      out.write("                            <h4><b>SOCIAL LINKS</b></h4>\r\n");
      out.write("                            <br/>\r\n");
      out.write("                            <p><a href=\"");
      out.print(facebookLink);
      out.write("\" class=\"aButton\" style=\"color:#fff\">FACEBOOK</a></p>\r\n");
      out.write("                            <p><a href=\"");
      out.print(twitterLink);
      out.write("\" class=\"aButton\" style=\"color:#fff\">TWITTER</a></p>\r\n");
      out.write("                        </center>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"footerFloat\">\r\n");
      out.write("                        <br/>\r\n");
      out.write("                        <center>\r\n");
      out.write("                            <h4><b>STAY IN TOUCH</b></h4>\r\n");
      out.write("                            <br/>\r\n");
      out.write("                            <p><b>ADDRESS: ");
      out.print(address);
      out.write("</b></p>\r\n");
      out.write("                            <p><b>PHONE: ");
      out.print(phone);
      out.write("</b></p>\r\n");
      out.write("                        </center>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("                    \r\n");
      out.write("        <!-- Bootstrap & jQuery -->\r\n");
      out.write("        <script src=\"assets/js/bootstrap.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"assets/js/jquery-1.12.3.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <!-- Animations -->\r\n");
      out.write("        <script src=\"assets/js/animations.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"assets/js/index.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"assets/js/jsinput.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <!-- Navbar / Menubar -->\r\n");
      out.write("        <script src=\"assets/js/navbar.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"assets/js/navbar_shrink.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        \r\n");
      out.write("        <script src=\"assets/js/npm.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <!-- Full Screen Search -->\r\n");
      out.write("        <script src=\"assets/js/search.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <!-- Smooth Scrolling Effect -->\r\n");
      out.write("        <script src=\"assets/js/smoothscroll.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    </BODY>\r\n");
      out.write("</HTML>");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
