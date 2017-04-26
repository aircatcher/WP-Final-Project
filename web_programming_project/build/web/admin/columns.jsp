<%@page import="Model.Image"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.News"%>
<%@page import="Model.DB_Connect_Admin"%>
<%@page import="Model.Product"%>
<%@page import="Model.User"%>
<%@page import="Model.Comment"%>
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
    String name = user.getName();
    type = user.getType();
%>
<header class="main-header">
    <!-- Logo -->
    <a href="index.jsp" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>A</b>P</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Admin</b> Panel</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
            <!-- Messages, Notifications, and Tasks are dumped -->
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/avatar04.png" class="user-image" alt="User Image">
              <span class="hidden-xs"><%=name%></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/avatar04.png" class="img-circle" alt="User Image">

                <p>
                  <%=name%>
                  <small>Privilege: <%=type%></small>
                </p>
              </li>
              <!-- Menu Body -->
              <!--<li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>-->
                <!-- /.row -->
              <!--</li>-->
              <!-- Menu Footer-->
              <li class="user-footer">
                <!--<div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>-->
                
                <form action="../logout" method="POST">
                    <div class="pull-right">
                        <input type="hidden" name="id" value="<%=user.getId()%>"/>
                        <input class="btn btn-default btn-flat" type="submit" value="Log Out"/>
                    </div>
                </form>
                
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>

    </nav>
  </header>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="dist/img/avatar04.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p><%=name%></p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                        <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
            </div>
        </form>
        <!-- /.search form -->
      
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="active treeview">
                <a href="../home.jsp">
                    <i class="fa fa-home"></i> <span>Go back to Website</span>
                </a>
            </li>
        </ul>
        <ul class="sidebar-menu">
            <li class="header">MAIN MENU</li>
            <li class="active treeview">
                <a href="index.jsp">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-shopping-cart"></i>
                    <span>Products</span>
                    <div class="pull-right" style="top:40%">
                        <%
                            ArrayList<Product> productList = DB_Connect_Admin.getProductList();

                            int p;
                            for(p = 0; p < productList.size(); p++){
                                Product product = productList.get(p);
                            }
                        %>
                        <small class="label bg-red"><%=p%></small>
                        <i class="fa fa-angle-left"></i>
                    </div>
                </a>
                <ul class="treeview-menu menu-open" style="display: block;">
                    <li><a href="product_list.jsp"><i class="fa fa-circle-o"></i> Product List</a></li>
                    <li><a href="product_add.jsp"><i class="fa fa-circle-o"></i> Add Product</a></li>
                </ul>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-newspaper-o"></i> <span>News</span>
                    <div class="pull-right" style="top:40%">
                        <%
                            ArrayList<News> newsList = DB_Connect_Admin.getNewsList();

                            int n;
                            for(n = 0; n < newsList.size(); n++){
                                News news = newsList.get(n);
                            }
                        %>
                        <small class="label bg-green"><%=n%></small>
                        <i class="fa fa-angle-left"></i>
                    </div>
                </a>
                <ul class="treeview-menu menu-open" style="display: block;">
                    <li><a href="news_list.jsp"><i class="fa fa-circle-o"></i> News List</a></li>
                    <li><a href="news_add.jsp"><i class="fa fa-circle-o"></i> Add News</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="comment_list.jsp">
                    <i class="fa fa-comments"></i>
                    <span>Comments</span>
                    <%
                        ArrayList<Comment> commentList = DB_Connect_Admin.getCommentList();

                        int c;
                        for(c = 0; c < commentList.size(); c++){
                            News news = DB_Connect_Admin.chooseNews(commentList.get(c).getNewsId());
                        }
                    %>
                    <small class="label bg-yellow pull-right"><%=c%></small>
                </a>
            </li>
            <li class="treeview">
                <a href="static_pages.jsp">
                    <i class="fa fa-anchor"></i>
                    <span>Static Pages</span>
                </a>
            </li>
            <li class="treeview">
                <a href="change_menu_location.jsp">
                    <i class="fa fa-arrows"></i>
                    <span>Navigation Layout</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-users"></i>
                    <span>Users</span>
                    <div class="pull-right" style="top:40%">
                        <%
                            ArrayList<User> userList = DB_Connect_Admin.getUserList();

                            int u;
                            for(u = 0; u < userList.size(); u++){
                                user = userList.get(u);
                            }
                        %>
                        <small class="label bg-blue"><%=u%></small>
                        <i class="fa fa-angle-left"></i>
                    </div>
                </a>
                <ul class="treeview-menu menu-open" style="display: block;">
                    <li><a href="user_list.jsp"><i class="fa fa-circle-o"></i> User List</a></li>
                    <li><a href="user_add.jsp"><i class="fa fa-circle-o"></i> Add New User</a></li>
                </ul>
            </li>
            <li>
                <a href="contacts.jsp">
                    <i class="fa fa-phone"></i>
                    <span>Contacts</span>
                </a>
            </li>
            
            <li class="header">LABELS</li>
            <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>