<%@page import="Model.DB_Connect_Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
    <HEAD>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    </HEAD>
    <BODY>
        <%
            String facebookLink = DB_Connect_Admin.getFacebookLink();
            String twitterLink = DB_Connect_Admin.getTwitterLink();
            String address = DB_Connect_Admin.getAddress();
            String phone = DB_Connect_Admin.getPhone();
        %>
        <div id="footerLock">
            <div id="footerWrap">
                <center style="padding-top:15px">
                    <a href="#top" class="aButton" style="color:#fff">[Back to Top]</a>
                </center>
                <div id="footer">
                    <div class="footerFloat">
                        <br/>
                        <center>
                            <h4><b>RSS FEED</b></h4>
                            <br/>
                            <script type="text/javascript">document.write('\x3Cscript type="text/javascript" src="' + ('https:' == document.location.protocol ? 'https://' : 'http://') + 'feed.mikle.com/js/rssmikle.js">\x3C/script>');</script><script type="text/javascript">(function() {var params = {rssmikle_url: "http://feeds.ign.com/ign/all",rssmikle_frame_width: "300",rssmikle_frame_height: "330",frame_height_by_article: "0",rssmikle_target: "_blank",rssmikle_font: "Arial, Helvetica, sans-serif",rssmikle_font_size: "12",rssmikle_border: "off",responsive: "off",rssmikle_css_url: "",text_align: "left",text_align2: "left",corner: "off",scrollbar: "on",autoscroll: "on",scrolldirection: "up",scrollstep: "3",mcspeed: "20",sort: "Off",rssmikle_title: "off",rssmikle_title_sentence: "",rssmikle_title_link: "",rssmikle_title_bgcolor: "#0066FF",rssmikle_title_color: "#FFFFFF",rssmikle_title_bgimage: "",rssmikle_item_bgcolor: "#222222",rssmikle_item_bgimage: "",rssmikle_item_title_length: "55",rssmikle_item_title_color: "#179B77",rssmikle_item_border_bottom: "on",rssmikle_item_description: "on",item_link: "off",rssmikle_item_description_length: "150",rssmikle_item_description_color: "#FFFFFF",rssmikle_item_date: "gl1",rssmikle_timezone: "Etc/GMT",datetime_format: "%b %e, %Y %l:%M %p",item_description_style: "text+tn",item_thumbnail: "full",item_thumbnail_selection: "auto",article_num: "15",rssmikle_item_podcast: "off",keyword_inc: "",keyword_exc: ""};feedwind_show_widget_iframe(params);})();</script><div style="font-size:10px; text-align:center; width:300px;"><a href="http://feed.mikle.com/" target="_blank" style="color:#CCCCCC;"><font color="transparent">RSS Feed Widget</font></a><!--Please display the above link in your web page according to Terms of Service.--></div>
                        </center>
                    </div>
                    <div class="footerFloat">
                        <br/>
                        <center>
                            <p></p>
                        </center>
                    </div>
                    <div class="footerFloat">
                        <br/>
                        <center>
                            <h4><b>SOCIAL LINKS</b></h4>
                            <br/>
                            <p><a href="<%=facebookLink%>" class="aButton" style="color:#fff">FACEBOOK</a></p>
                            <p><a href="<%=twitterLink%>" class="aButton" style="color:#fff">TWITTER</a></p>
                        </center>
                    </div>
                    <div class="footerFloat">
                        <br/>
                        <center>
                            <h4><b>STAY IN TOUCH</b></h4>
                            <br/>
                            <p><b>ADDRESS: <%=address%></b></p>
                            <p><b>PHONE: <%=phone%></b></p>
                        </center>
                    </div>
                </div>
            </div>
        </div>
                    
        <!-- Bootstrap & jQuery -->
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="assets/js/jquery-1.12.3.min.js" type="text/javascript"></script>
        <!-- Animations -->
        <script src="assets/js/animations.js" type="text/javascript"></script>
        <script src="assets/js/index.js" type="text/javascript"></script>
        <script src="assets/js/jsinput.js" type="text/javascript"></script>
        <!-- Navbar / Menubar -->
        <script src="assets/js/navbar.js" type="text/javascript"></script>
        <script src="assets/js/navbar_shrink.js" type="text/javascript"></script>
        
        <script src="assets/js/npm.js" type="text/javascript"></script>
        <!-- Full Screen Search -->
        <script src="assets/js/search.js" type="text/javascript"></script>
        <!-- Smooth Scrolling Effect -->
        <script src="assets/js/smoothscroll.js" type="text/javascript"></script>
    </BODY>
</HTML>