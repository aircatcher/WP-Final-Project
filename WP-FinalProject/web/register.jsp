<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
    <HEAD>
        <title>Register now!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
        <link rel="shortcut icon" href="http://designshack.net/favicon.ico">
        <link rel="icon" href="http://designshack.net/favicon.ico">
        
        <script src="assets/js/jquery-1.12.3.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/navbar.js"></script>
        <script src="assets/js/jsinput.js"></script>
        
        <link rel="stylesheet" href="assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="assets/css/style.css"/>
        <link rel="stylesheet" href="assets/css/searchNav.css"/>
    </HEAD>
    <BODY>
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
                        <img alt="Brand" src="assets/images/logo/logo.png" style="width: 50px">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Home</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="false">
                                Categories <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="trigger right-caret">Computers</a>
                                    <ul class="dropdown-menu sub-menu">
                                        <li><a href="#">Laptop</a></li>
                                        <li><a href="#">Desktop</a></li>
                                        <li><a href="#">Mini PC</a></li>
                                        <li><a href="#">Tablet</a></li>
                                        <li><a href="#">Monitor</a></li>
                                        <li><a href="#">Printer</a></li>
                                        <li><a href="#">Scanner</a></li>
                                        <li><a href="#">Server</a></li>
                                        <li><a href="#">Software</a></li>
                                        <li><a href="#" class="trigger right-caret">Hardware</a>
                                            <ul class="dropdown-menu sub-menu">
                                                <li><a href="#">PSU</a></li>
                                                <li><a href="#">Motherboard</a></li>
                                                <li><a href="#">HDD / SSD</a></li>
                                                <li><a href="#">RAM / DIMM</a></li>
                                                <li><a href="#">Graphic Card</a></li>
                                                <li><a href="#">UPS</a></li>
                                                <li><a href="#">USB</a></li>
                                                <li><a href="#">PCI Cards</a></li>
                                                <li><a href="#">External Drives</a></li>
                                                <li><a href="#">Tower Case</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#"class="trigger right-caret">Accessories</a>
                                            <ul class="dropdown-menu sub-menu">
                                                <li><a href="#">Mouse</a></li>
                                                <li><a href="#">Keyboard</a></li>
                                                <li><a href="#">Speaker</a></li>
                                                <li><a href="#">Fan</a></li>
                                                <li><a href="#">Mousepad</a></li>
                                                <li><a href="#">Cables</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#">Furnitures</a></li>
                                <li><a href="#">Handphone</a></li>
                                <li><a href="#">Fashion</a></li>
                            </ul>
                            <!--<ul class="dropdown-menu">
                                <li><a tabindex="-1" href="#">Computers</a></li>
                                <li><a tabindex="-1" href="#">Accessories</a></li>
                                <li><a tabindex="-1" href="#">Furnitures</a></li>
                                <li><a tabindex="-1" href="#">Handphone</a></li>
                                <li><a tabindex="-1" href="#">Fashion</a></li>
                            </ul>-->
                        </li>
                    </ul>
                    
                    <div id="searchform">
                    <form id="searchform" name="searchform" method="get" action="index.html">
                        <div class="fieldcontainer">
                            <input type="text" name="s" id="s" class="searchfield" placeholder="Keywords..." tabindex="1">
                            <input type="submit" name="searchbtn" id="searchbtn" value=""> 
                        </div><!-- @end .fieldcontainer -->
                    </form>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <form action="" method="POST" style="padding:5px">
                                    <table>
                                        <tr>
                                            <td colspan="2"><input type="text" name="username"/></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><input type="password" name="password"/></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td style="text-align:right"><input type="submit" value="Log in" style="width:50%;text-align:'right'"/></td>
                                        </tr>
                                    </table>
                                </form>
                                <li role="separator" class="divider"></li>
                                <li>Don't have an account? <a href="register.php">Sign up now!</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
                <!--Second row navbar-->
                <div class="hideAfterScroll">
                    <ul class="nav navbar-nav" style="position:absolute; left:14px; top: 66%;">
                        <li><font color="#9D9D9D">Recent searches: </font></li>
                    </ul>
                    <ul class="nav navbar-nav" style="position:absolute; left:134px; top: 66%;">
                        <li class="recentSearch"><font color="WHITE"><b>Computer</b></font></li>
                        <li class="recentSearch"><font color="WHITE"><b>Fan blade</b></font></li>
                        <li class="recentSearch"><font color="WHITE"><b>Gaming laptop</b></font></li>
                    </ul>
                </div>
            </div><!-- /.container-fluid -->
        </nav>
                
        <!-- ************************ CONTENT *********************** -->
        <div class="content">
            <br/><br/><br/>
            <form action="reg" method="POST">
                <table style="border-collapse:separate; border-spacing:10px 10px;">
                    <tr>
                        <td colspan="2">Register now, it's free!</td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username"/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:right"><input type="submit" value="Register"/></td>
                    </tr>
                </table>
            </form>            
        </div>
        
        <!-- ******************** HEADER ANIMATION ****************** -->
        <script>
            jQuery(window).scroll(function()
            {
                // Parallax Effects
                
                var vScroll = jQuery(this).scrollTop();
                jQuery('#headerLogo').css(
                {
                        "transform" : "translate(0px, " +vScroll/2+ "px)"
                });
                
                //
                var vScroll = jQuery(this).scrollTop();
                jQuery('#fore-keyboard').css(
                {
                        "transform" : "translate(" +vScroll/2+ "px, -" +vScroll/12+ "px)"
                });
                
                var vScroll = jQuery(this).scrollTop();
                jQuery('#fore-mouse').css(
                {
                        "transform" : "translate(" +vScroll/4+ "px, -" +vScroll/12+ "px)"
                });
                
                var vScroll = jQuery(this).scrollTop();
                jQuery('#fore-notebook').css(
                {
                        "transform" : "translate(" +vScroll/10+ "px, -" +vScroll/12+ "px)"
                });
                
                var vScroll = jQuery(this).scrollTop();
                jQuery('#fore-monitor').css(
                {
                        "transform" : "translate(0px, -" +vScroll/12+ "px)"
                });
                
                var vScroll = jQuery(this).scrollTop();
                jQuery('#fore-stack').css(
                {
                        "transform" : "translate(" +vScroll/-10+ "px, -" +vScroll/12+ "px)"
                });
                
                var vScroll = jQuery(this).scrollTop();
                jQuery('#fore-hdd').css(
                {
                        "transform" : "translate(" +vScroll/-4+ "px, -" +vScroll/12+ "px)"
                });
                
                var vScroll = jQuery(this).scrollTop();
                jQuery('#fore-scanner').css(
                {
                        "transform" : "translate(" +vScroll/-2.7+ "px, -" +vScroll/12+ "px)"
                });
            });
            
            //Calling dropdown hover function
            $.fn.bootstrapDropdownHover();
            
            //Other Animations
            $(window).scroll(function() {
                $('#searchform').each(function(){
                var imagePos = $(this).offset().top;

                var topOfWindow = $(window).scrollTop();
                    if (imagePos < topOfWindow+400) {
                        $(this).addClass("slideLeft");
                    }
                });
            });
            
            $('#searchform').click(function() {
                $(this).addClass("slideLeft");
            });
        </script>
    </BODY>
</HTML>