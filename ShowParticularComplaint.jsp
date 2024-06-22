<%@ page import="mayur.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<head>
<title>Visitors</title>
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



<section id="main-content">
	<section class="wrapper">
		<div class="form-w3layouts">
            
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                
                              Show Complaint
                           
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="cmxform form-horizontal" action=""  method="post" >

                                   <div class="form-group ">
                                        <label for="awasEmail" class="control-label col-lg-3">Enter your PM-Awas Id </label>
                                        <div class="col-lg-6">
                                            <input class=" form-control" id="" name="awasId" type="text">
                                        </div>
                                    </div>
                                   
                                   
                                   
                                               <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                        <button class="btn btn-default" type="button"> <a href="usermenu.html">Menu</a></button>
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
            <th>complaintId</th>
            <th data-breakpoints="xs">awasId</th>
           
            <th>awasContactNo</th>
            <th data-breakpoints="xs">registerComplaint</th>
           
          
          </tr>
        </thead>
        
				<%        String awasId = request.getParameter("awasId");
				          
				 Connection con = JDBCConnect.connect();
					try{
				
				PreparedStatement ps1 = con.prepareStatement("select * from addcomplaint where awasId=?");
				ps1.setString(1,awasId);
				
				ResultSet rs = ps1.executeQuery();
				if(rs.next())
				{
					%>  	 	 	 	 	 	
				  <tr>
				<td><%=rs.getInt("complaintId")%></td>
				<td> <%=rs.getString("awasId")%></td>
				<td> <%=rs.getString("awasContactNo")%></td>
				<td> <%=rs.getString("registerComplaint")%></td>
			
				<td><a href="DeleteComplaint.jsp?awasId=<%=rs.getString(3)%>">delete</a></td>
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

<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>
					
					
					        
					
					
					
	
