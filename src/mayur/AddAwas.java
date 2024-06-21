package mayur;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
//@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class AddAwas extends HttpServlet {
     
    // database connection settings
   
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
    	String     message = null;
      Connection conn=null; 		 	

		String awasUserName = request.getParameter("awasUserName");
		String awasContactNo = request.getParameter("awasContactNo");
		String awasEmail = request.getParameter("awasEmail");
		String awasCity  = request.getParameter("awasCity");
		String awasLocation  = request.getParameter("awasLocation");
		String awasRegion   = request.getParameter("awasRegion");
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("housephoto");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println("File Name : "+filePart.getName());
            System.out.println("File Size : "+filePart.getSize());
            System.out.println("File Type : "+filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        
         
        try {
            // connects to the database
            Connection con=JDBCConnect.connect();
      
 
            // constructs SQL statement
            
            PreparedStatement statement = con.prepareStatement("insert into awasdatabase values(?,?,?,?,?,?,?,?)");
            statement.setInt(1, 0);
	        statement.setString(2, awasUserName);
	        statement.setString(3, awasContactNo);
	        statement.setString(4, awasEmail);
	        statement.setString(5, awasCity);
	        statement.setString(6, awasLocation);
	        statement.setString(7, awasRegion);
	     
           
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(8, inputStream);
            }
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
               message = "File uploaded and saved into database";
            }
        } 
        catch (Exception ex) 
        {
        		message = "ERROR: " + ex.getMessage();
        		ex.printStackTrace();
        } 
        finally {
            if (conn != null) {
                // closes the database connection
                try 
                {
                    conn.close();
                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
    }
}























/*import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

*//**
 * Servlet implementation class AddAwas
 *//*
public class AddAwas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public AddAwas() {
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
		
		
		String awasUserName = request.getParameter("awasUserName");
		String awasContactNo = request.getParameter("awasContactNo");
		String awasEmail = request.getParameter("awasEmail");
		String awasCity  = request.getParameter("awasCity");
		String awasLocation  = request.getParameter("awasLocation");
		String awasRegion   = request.getParameter("awasRegion");
		Connection con = JDBCConnect.connect();
		
		 try{
			  System.out.println("Writing query");
		       PreparedStatement ps1 = con.prepareStatement("insert into awasdatabase values(?,?,?,?,?,?,?)");
		        ps1.setInt(1, 0);
		        ps1.setString(2, awasUserName);
		        ps1.setString(3, awasContactNo);
		        ps1.setString(4, awasEmail);
		        ps1.setString(5, awasCity);
		        ps1.setString(6, awasLocation);
		        ps1.setString(7, awasRegion);
		     
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

}*/
