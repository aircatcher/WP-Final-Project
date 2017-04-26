<%@page import="Model.Image"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.News"%>
<%@page import="Model.DB_Connect_Admin"%>
<%@page import="Model.Product"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>WPGS | Welcome</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <a name="top"/>
        <!-- Check user type -->
        <%
            User user;
            String type = null;
            
            // if someone has logged in
            if(session.getAttribute("user") != null){
                user = (User) session.getAttribute("user");
                type = user.getType();
            } else{
                user = null;
            }
        %>
        
        <!-- ******************** NAVIGATION BAR ******************** -->
        <nav class="navbar navbar-inverse navbar-fixed-<%
            if(DB_Connect_Admin.getMenuLocation() == 0){
            %>top<%
                } else if(DB_Connect_Admin.getMenuLocation() == 1){
            %>bottom<%
                }
            %>" style="z-index:20">
            <div class="container-fluid" style="position:relative;z-index:2">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <button type="button" class="navbar-toggle collapsed" style="height:34px" data-toggle="collapse">
                        <a href="#search">
                            <span class="glyphicon glyphicon-search" style="top:0"></span>
                        </a>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img alt="Brand" src="assets/images/logo/logo.png" style="width:50px">
                    </a>
                </div>
                
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                        <li><a href="products.jsp"><span class="glyphicon glyphicon-info-sign"></span> Products</a></li>
                        <li><a href="about.jsp"><span class="glyphicon glyphicon-info-sign"></span> About Us</a></li>
                        <li><a href="news.jsp"><span class="glyphicon glyphicon-list-alt"></span> News</a></li>
                        <%
                            if(session.getAttribute("user") == null){
                        %>
                        <li class="hidden-lg hidden-md hidden-sm"><a href="settings.jsp"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
                        <li class="hidden-lg hidden-md hidden-sm"><a href="admin/index.jsp"><span class="glyphicon glyphicon-log-in"></span> Login/Register</a></li>
                        <%
                            } else { String name = user.getName();
                        %>
                        <li class="dropdown hidden-lg hidden-md hidden-sm">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="false">
                                <span class="glyphicon glyphicon-user"></span> <%=name%> <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="admin/index.jsp">Dashboard</a></li>
                                <li><a href="#">Log Out</a></li>
                            </ul>
                        </li>
                        <%
                            }
                        %>
                    </ul>
                    <ul class="nav navbar-nav navbar-right hidden-xs">
                        <li><a href="#search"><span class="glyphicon glyphicon-search"></span> Search</a></li>
                        <%
                            if(user == null){
                        %>
                        <li><a href="admin/index.jsp"><span class="glyphicon glyphicon-log-in"></span> Login/Register</a></li>
                        <%
                            }else{
                                String name = user.getName();
                        %>
                        <li class="dropdown hidden-xs">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="false">
                                <span class="glyphicon glyphicon-user"></span> <%=name%> <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <a href="admin/index.jsp" class="btn btn-default btn-flat" style="width:100%;text-decoration:none">Dashboard</a>
                                <form action="logout" method="POST">
                                    <input type="hidden" name="id" value="<%=user.getId()%>"/>
                                    <input class="btn btn-default btn-flat" type="submit" value="Log Out" style="width:100%">
                                </form>
                            </ul>
                            <%
                                }
                            %>
                    </ul>
                </div>
            </div><!-- /.navbar-collapse -->
            <!--Second row navbar-->
            <div class="navbarScroll hidden-xs">
                <ul class="nav navbar-nav" style="position:absolute;width:100%;left:0;top:66%;">
                    <li style="position:relative;z-index:+1">
                        <font color="#9D9D9D">
                            <table style="background-color:#222;width:110px">
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;News Feed:</td>
                                </tr>
                            </table>
                        </font>
                    </li>
                </ul>
                <div class="marquee" style="position:absolute;left:134px;top:66%;height:105%">
                    <ul class="nav navbar-nav" >
                        <li class="newsfeed"><font color="WHITE"><b><%=DB_Connect_Admin.getLatestNews().getName()%></b></font></li>
                        <li class="newsfeed"><font color="WHITE"><b><%=DB_Connect_Admin.getLatestNews2().getName()%></b></font></li>
                        <li class="newsfeed"><font color="WHITE"><b><%=DB_Connect_Admin.getLatestNews3().getName()%></b></font></li>
                    </ul>
                 </div>
            </div>
        </nav>
        <div id="search" style="z-index:+25">
            <button type="button" class="close">×</button>
            <form action="" method="GET">
                <input type="search" value="" placeholder="What do you want to search?" />
                <button type="submit" class="btn btn-default">Search</button></center>
            </form>
        </div>
        
        <!-- ************************ HEADER ************************ -->
        <div id="headerWrap">
            <div id="headerLogo">
                <div id="headerCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#headerCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#headerCarousel" data-slide-to="1"></li>
                        <li data-target="#headerCarousel" data-slide-to="2"></li>
                        <li data-target="#headerCarousel" data-slide-to="3"></li>
                    </ol>

                    <%
                        ArrayList<Integer> imageList = DB_Connect_Admin.getSlideshowImage();

                        Image image1;
                        Image image2;
                        Image image3;
                        Image image4;
                        image1 = DB_Connect_Admin.getImage(1);
                        image2 = DB_Connect_Admin.getImage(2);
                        image3 = DB_Connect_Admin.getImage(3);
                        image4 = DB_Connect_Admin.getImage(4);
                    %>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="<%=image1.getUrl()%>" alt="Chania" style="height:100%;width:auto;position:absolute;top:-100%;bottom:-100%;left:-100%;right:-100%;margin:auto;">
                        </div>
                        <div class="item">
                             <img src="<%=image2.getUrl()%>" alt="Chania" style="height:100%;width:auto;position:absolute;top:-100%;bottom:-100%;left:-100%;right:-100%;margin:auto;">
                        </div>
                        <div class="item">
                            <img src="<%=image3.getUrl()%>" alt="Flower" style="height:100%;width:auto;position:absolute;top:-100%;bottom:-100%;left:-100%;right:-100%;margin:auto;">
                        </div>
                        <div class="item">
                             <img src="<%=image4.getUrl()%>" alt="Flower" style="height:100%;width:auto;position:absolute;top:-100%;bottom:-100%;left:-100%;right:-100%;margin:auto;">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#headerCarousel" role="button" data-slide="prev">
                        <div style="position:absolute;top:48%;left:10%">
                            <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </div>
                    </a>
                    <a class="right carousel-control" href="#headerCarousel" role="button" data-slide="next">
                        <div style="position:absolute;top:48%;right:10%">
                            <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        
        <!-- ************************ CONTENT *********************** -->
        <div class="content" style="padding:15px">
            <!-- Product highlight -->
            <div class="row">
                <div class="col-sm-4 col-md-4">
                    <%
                        // get product for highlight
                        Product product = DB_Connect_Admin.getRandomProduct();
                    %>
                    <div class="thumbnail">
                        <div class="caption">
                            <center>
                            <h2>Product Highlight</h2>
                            <br>
                                <img src="<%=product.getUrl()%>" alt="Image Not Found" width="250">
                                <h4><%=product.getName()%></h4>
                                <h4><%=product.getDate()%></h4
                                <h4>Rp. <%=product.getPrice()%></h4>
                            </center>
                        </div>
                    </div>
                </div>   
                <div class="col-sm-8 col-md-8">
                    <div class="thumbnail">
                        <div class="caption">
                            <%
                                // get latest news
                                News news = DB_Connect_Admin.getLatestNews();
                            %>
                            <center>
                                <h2>Latest News</h2>
                                <h4><%=news.getName()%></h4>
                                <p><%=news.getNews()%></p>
                            </center>
                        </div>
                    </div>
                </div>   
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>