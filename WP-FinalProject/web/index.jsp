<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Welcome!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="http://designshack.net/favicon.ico">
        <link rel="icon" href="http://designshack.net/favicon.ico">
        
        <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/animations.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/searchNav.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/icofont.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- ******************** NAVIGATION BAR ******************** -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img alt="Brand" src="assets/images/logo/logo.png" style="width:50px">
                    </a>
                </div>
                
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="false">
                                Categories <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#"class="trigger right-caret">Fiction</a>
                                    <ul class="dropdown-menu sub-menu">
                                        <li><a href="#">Horror</a></li>
                                        <li><a href="#">Paranormal</a></li>
                                        <li><a href="#">Art</a></li>
                                        <li><a href="#">Novel</a></li>
                                        <li><a href="#">Fantasy</a></li>
                                    </ul>
                                </li>
                                <li><a href="#"class="trigger right-caret">Non-Fiction</a>
                                    <ul class="dropdown-menu sub-menu">
                                        <li><a href="#">Horror</a></li>
                                        <li><a href="#">Biography</a></li>
                                        <li><a href="#">Art</a></li>
                                        <li><a href="#">History</a></li>
                                        <li><a href="#">Science</a></li>
                                       
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    
                    <div id="">
                        
                    </div>
                    <div id="searchform">
                    <form id="searchform" name="searchform" method="get" action="index.html">
                        <div class="fieldcontainer">
                            <input type="text" name="s" id="s" class="searchfield" placeholder="Keywords..." tabindex="1">
                            <input type="submit" name="searchbtn" id="searchbtn" value=""> 
                        </div><!-- @end .fieldcontainer -->
                    </form>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.jsp">Login / Sign Up</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
                <!--Second row navbar-->
                <div class="navbarScroll">
                <div class="hidden-sm hidden-xs">
                    <ul class="nav navbar-nav" style="position:absolute; left:14px; top: 66%;">
                        <li><font color="#9D9D9D">News Feed: </font></li>
                    </ul>
                    <ul class="nav navbar-nav" style="position:absolute; left:134px; top: 66%;">
                        <li class="recentSearch"><font color="WHITE"><b>Text1</b></font></li>
                        <li class="recentSearch"><font color="WHITE"><b>Text2</b></font></li>
                        <li class="recentSearch"><font color="WHITE"><b>Text3</b></font></li>
                    </ul>
                </div>
                </div>
            </div><!-- /.container-fluid -->
        </nav>
        
        <!-- ************************ HEADER ************************ -->
        
        <div id="headerWrap">
            <div id="headerLogo"></div>
            <div class="hidden-md hidden-sm hidden-xs">
                <div id="fore-keyboard"></div>
                <div id="fore-mouse"></div>
                <div id="fore-notebook"></div>
                <div id="fore-monitor"></div>
                <div id="fore-stack"></div>
                <div id="fore-hdd"></div>
                <div id="fore-scanner"></div>
            </div>
        </div>
        
        <!-- ************************ CONTENT *********************** -->
        <div class="content">
            <p>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
                1<br/>
            </p>
        </div>
        
        <script src="assets/js/jquery-1.12.3.min.js" type="text/javascript"></script>
        <script src="assets/js/bootstrap.js" type="text/javascript"></script>
        <script src="assets/js/animations.js" type="text/javascript"></script>
        <script src="assets/js/navbar.js" type="text/javascript"></script>
        <script src="assets/js/jsinput.js" type="text/javascript"></script>
        <%@include file="footer.jsp" %>
        </div>
    </body>
</html>