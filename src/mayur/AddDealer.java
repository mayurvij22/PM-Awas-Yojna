package mayur;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class AdminPanel
 */
public class  AddDealer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDealer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//String dealerId = request.getParameter("dealerId");
		System.out.println("Hello");
		String dealerEmail = request.getParameter("dealerEmail");
		String dealerpwd = request.getParameter("dealerpwd");
		String dealerShopName = request.getParameter("dealerShopName");
		String dealerContactNo  = request.getParameter("dealerContactNo");
		String dealerRegion  = request.getParameter("dealerRegion");
		String dealerCity  = request.getParameter("dealerCity");
		Connection con = JDBCConnect.connect();
		
		 try{
			  System.out.println("Writing query");
		       PreparedStatement ps1 = con.prepareStatement("insert into dealersdata values(?,?,?,?,?,?,?)");
		        ps1.setInt(1, 0);
		        ps1.setString(2, dealerEmail);
		        ps1.setString(3, dealerpwd);
		        ps1.setString(4, dealerShopName);
		        ps1.setString(5, dealerContactNo);
		        ps1.setString(6, dealerRegion);
		        ps1.setString(7, dealerCity);
		     
		      int i = ps1.executeUpdate();
		      System.out.println("Executing query");
		      if(i>0){
		    	  
		    	  System.out.println("Success");
		    	  response.sendRedirect("dealersuccess.html");
		      }
		      
		      else{
		    	  response.sendRedirect("dealerunsuccess.html");
		      }
	 }
	 catch(Exception e){
		 e.printStackTrace();
		 
	 }
		
	}

}
