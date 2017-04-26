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
        <title>WPGS | About Us</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <a name="top"/>
        <!-- Check user type -->
         <%
            User user;
            String type;
            
            // if someone has logged in
            if(session.getAttribute("user") != null){
                user = (User) session.getAttribute("user");
                type = (String) user.getType();
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
            <div class="container-fluid" style="position:relative;z-index:+2">
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
                        <li><a href="home.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                        <li><a href="products.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Products</a></li>
                        <li class="active"><a href="#"><span class="glyphicon glyphicon-info-sign"></span> About Us</a></li>
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
                                <li><a href="admin/index.jsp">Dashboard</a></li>
                                <li><a href="#">Log Out</a></li>
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
        <br/><br/><br/>
        <div class="jumbotron" style="height:100%">
            <div class="container">
                <h1>About Us</h1>
            </div>
        </div>
        
        <!-- ************************ CONTENT *********************** -->
        <div class="content" style="padding:15px">
            <!-- Product highlight -->
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <div class="thumbnail">
                        <div class="caption">
                            <center>
                            <h2>History</h2>
                            <br/>
                            <p><%=DB_Connect_Admin.getHistory()%></p>
                            </center>
                        </div>
                    </div>
                </div>   
                <div class="col-sm-12 col-md-12">
                    <div class="thumbnail">
                        <div class="caption">
                            <center>
                                <h2>Profile</h2>
                                <br/>
                                <p><%=DB_Connect_Admin.getProfile()%></p>
                            </center>
                        </div>
                    </div>
                </div>   
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>