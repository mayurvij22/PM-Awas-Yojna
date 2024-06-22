<%@ page import="mayur.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<head>
<title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Responsive_table :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="index.html" class="logo">
       Administer 
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->
<div class="nav notify-row" id="top_menu">
    <!--  notification start -->
    <ul class="nav top-menu">
        <!-- settings start -->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-tasks"></i>
                <span class="badge bg-success">8</span>
            </a>
            <ul class="dropdown-menu extended tasks-bar">
                <li>
                    <p class="">You have pending tasks</p>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Target</h5>
                                <p>75% , Deadline  12 June ’30</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="45">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Product </h5>
                                <p>45% , Deadline  12 June’33</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="78">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5> collection recover </h5>
                                <p>87% , Deadline  June’35</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="60">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Target</h5>
                                <p>83% , Deadline  12 June’33</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="90">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>

                <li class="external">
                    <a href="#">See All Tasks</a>
                </li>
            </ul>
        </li>
      
        <!-- inbox dropdown end -->
        <!-- notification dropdown start-->
        <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                <i class="fa fa-bell-o"></i>
                <span class="badge bg-warning">3</span>
            </a>
            <ul class="dropdown-menu extended notification">
                <li>
                    <p>Notifications</p>
                </li>
                <li>
                    <div class="alert alert-info clearfix">
                        <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                        <div class="noti-info">
                            <a href="#"> </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="alert alert-danger clearfix">
                        <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                        <div class="noti-info">
                            <a href="#"> .</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="alert alert-success clearfix">
                        <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                        <div class="noti-info">
                            <a href="#"> </a>
                        </div>
                    </div>
                </li>

            </ul>
        </li>
        <!-- notification dropdown end -->
    </ul>
    <!--  notification end -->
</div>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
       
        <!-- user login dropdown start-->
        <li class="dropdown">
         
            <ul class="dropdown-menu extended logout">
                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="menu.html">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
            
              
               
                
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-tasks"></i>
                        <span>PM-Awas Dealer </span>
                    </a>
                    <ul class="sub">
                        <li><a href="adddealer.html"> Add PM-Awas Dealer</a></li>
                        <li><a href="ViewAllDealer.jsp"> View All PM-Awas Dealer</a></li>
						<li><a href="DeleteDealer.jsp">Delete PM-Awas Dealer </a></li>
						<li><a href="ShowDealer.jsp">Show Single PM-Awas Dealer </a></li>
                    </ul>
                </li>
                 
                
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-tasks"></i>
                        <span> View PM-Awas </span>
                    </a>
                    <ul class="sub">
                        <li><a href="addawas.html"> Add PM-Awas Acount</a></li>
                        <li><a href="ViewAllAwas.jsp"> Show All PM-Awas Acount   </a></li>
                        <li><a href="ShowAwas.jsp">  Show PM-Awas Acount  </a></li>
                        <li><a href="DeleteAwas.jsp"> Delete  PM-Awas </a></li>
					
						
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-tasks"></i>
                        <span> PM-Awas Report </span>
                    </a>
                    <ul class="sub">
                        
                        
                        <li><a href="ViewBill.jsp"> View  PM-Awas Housing</a></li>
					    <li><a href="viewImage.jsp">View PM-House </a></li>
					      <li><a href="download.html"> Download File  </a></li>
						
                    </ul>
                </li>
                     <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-tasks"></i>
                        <span> Complaints</span>
                    </a>
                    <ul class="sub">
                        <li><a href="ShowComplaint.jsp">Show All Complaint</a></li>
                         <li><a href="ShowParticularComplaint.jsp">Show Complaint</a></li>
                        <li><a href="DeleteComplaint.jsp"> Deleted Complaint</a></li>
					
                    </ul>
                </li>
               
                <li>
                    <a href="index.html">
                        <i class="fa fa-user"></i>
                        <span>Login Page</span>
                    </a>
                </li>
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>


<section id="main-content">
	<section class="wrapper">
		<div class="form-w3layouts">
            
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                
                              Show Awas
                           
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="cmxform form-horizontal" action=""  method="post" >

                                   <div class="form-group ">
                                        <label for="awasEmail" class="control-label col-lg-3">Enter your PM-Awas Email </label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="" name="awasEmail" type="email">
                                        </div>
                                    </div>
                                   
                                   
                                   
                                               <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                        <button class="btn btn-default" type="button"> <a href="menu.html">Menu</a></button>
                                            <button class="btn btn-primary" type="submit">Show</button>
                                            <button class="btn btn-default" type="button">Cancel</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <!-- page end-->
        </div>
</section>
     
    
      <table class="table" ui-jq="footable" ui-options='      {
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
        <thead>
          <tr>
            <th data-breakpoints="xs">awasId</th>
            <th>awasUserName</th>
            <th>awasContactNo</th>
            <th data-breakpoints="xs">awasEmail</th>
             <th data-breakpoints="xs">awasCity</th>
            <th data-breakpoints="xs sm md" >awasLocation</th>
              <th data-breakpoints="xs">awasRegion</th>
             
          </tr>
        </thead>
        
				<%        String awasEmail = request.getParameter("awasEmail");
				          
				 Connection con = JDBCConnect.connect();
					try{
				
				PreparedStatement ps1 = con.prepareStatement("select * from awasdatabase where awasEmail=?");
				ps1.setString(1,awasEmail);
				
				ResultSet rs = ps1.executeQuery();
				if(rs.next())
				{
					%>  	 	 	 	 	 	
					  <tr>
				<td><%=rs.getInt("awasId")%></td>
				<td> <%=rs.getString("awasUserName")%></td>
				<td> <%=rs.getString("awasContactNo")%></td>
				<td> <%=rs.getString("awasEmail")%></td>
				<td> <%=rs.getString("awasCity")%></td>
				<td> <%=rs.getString("awasLocation")%></td>
				<td> <%=rs.getString("awasRegion")%></td>
				<td><a href="DeleteAwas.jsp?awasEmail=<%= rs.getString(4)%>">delete</a></td>
				<td><a href="download1.html?awasEmail=<%= rs.getString(4)%>">photo</a></td>
				</tr>
					
					
					
					
					
					<%
				}
				
				else{
					
				}
				
			
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
				%>
     
        </tbody>
      </table>
    </div>
  </div>
</div>
</section>
 
 
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>
					
					
					        
					
					
					
	
