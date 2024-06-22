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
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="First.html">
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
                        <span> PM-Awas Housing </span>
                    </a>
                    <ul class="sub">
                        <li><a href="addawas.html">Add PM-Awas Housing</a></li>
                        <li><a href="ViewAllAwas.jsp"> View All PM-Awas Housing</a></li>
                        <li><a href="ShowAwas.jsp"> Show  Single  PM-Awas Housing </a></li>
						<li><a href="DeleteAwas.jsp"> Delete  PM-Awas Housing </a></li>
					
						<li><a href="ShowAwasReport.jsp">View PM-Awas Report</a></li>
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
                
                              Show Bill
                           
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="cmxform form-horizontal" action=""  method="post" >

                                  <div class="form-group ">
                                        <label for="awasEmail" class="control-label col-lg-3">Enter your PM-Awas awasId </label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="" name="awasId" type="text">
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
            <th data-breakpoints="xs">billNo</th>
            <th>dealerId</th>
            <th>awasId</th>
            <th data-breakpoints="xs">photo</th>
            
             
          </tr>
        </thead>
        
				<%        String awasId = request.getParameter("awasId");
				          
				 Connection con = JDBCConnect.connect();
					try{
				
				PreparedStatement ps1 = con.prepareStatement("select * from viewbills where awasId=?");
				ps1.setString(1,awasId);
				
				ResultSet rs = ps1.executeQuery();
				if(rs.next())
				{
					%>  	 	 	 	 	 	
					  <tr>
				<td><%=rs.getInt("billNo")%></td>
				<td> <%=rs.getString("dealerId")%></td>
				<td> <%=rs.getString("awasId")%></td>
				<td> <%=rs.getBlob("photo")%></td>
				
				<td><a href="DeleteAwas.jsp?awasEmail=rs.getString(4)">delete</a></td>
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
 <!-- footer -->
	
 
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>
					
					
					        
					
					
					
	
