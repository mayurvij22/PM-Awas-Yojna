package mayur;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddComplaint
 */
public class AddComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComplaint() {
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

		String awasId = request.getParameter("awasId");
		String awasContactNo = request.getParameter("awasContactNo");
		String registerComplaint = request.getParameter("registerComplaint");
		
		Connection con = JDBCConnect.connect();
		
		 try{
			  System.out.println("Writing query");
		       PreparedStatement ps1 = con.prepareStatement("insert into addcomplaint values(?,?,?,?)");
		        ps1.setInt(1, 0);
		        ps1.setString(2, awasId);
		        ps1.setString(3, awasContactNo);
		        ps1.setString(4, registerComplaint);
		    
		      int i = ps1.executeUpdate();
		      System.out.println("Executing query");
		      if(i>0){
		    	  System.out.println("Success");
		    	  response.sendRedirect("usermenu.html");
		      }
		      else{
		    	  response.sendRedirect("unsuccess.html");
		      }
	 }
	 catch(Exception e){
		 e.printStackTrace();
		 
	 }
	}

}
