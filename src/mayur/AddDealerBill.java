package mayur;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddDealerBill
 */
public class AddDealerBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDealerBill() {
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
		String itemList = request.getParameter("itemList");
		String quantity  = request.getParameter("quantity");
		String cost  = request.getParameter("cost");
		String totalBill   = request.getParameter("totalBill");
		Connection con = JDBCConnect.connect();
		
		 try{
			  System.out.println("Writing query");
		       PreparedStatement ps1 = con.prepareStatement("insert into billdatabase values(?,?,?,?,?,?,?)");
		        ps1.setInt(1, 0);
		        ps1.setString(2, awasId);
		        ps1.setString(3, awasContactNo);
		        ps1.setString(4, itemList);
		        ps1.setString(5, quantity);
		        ps1.setString(6, cost);
		        ps1.setString(7, totalBill);
		     
		      int i = ps1.executeUpdate();
		      System.out.println("Executing query");
		      if(i>0){
		    	  System.out.println("Success");
		    	  response.sendRedirect("dealersucessbill.html");
		      }
		     
	 }
	 catch(Exception e){
		
	    	  response.sendRedirect("dealerunsucessbill.html");
	     
		 e.printStackTrace();
		 
	 }
	}

}
