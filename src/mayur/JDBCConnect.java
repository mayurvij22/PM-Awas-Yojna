package mayur;


import java.sql.*;
public class JDBCConnect {
    static Connection con = null;
    public static Connection connect(){
    	
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		con=DriverManager.getConnection(  
    				"jdbc:mysql://localhost:3306/govdata","root","");  
    		System.out.println("Connection is Estb");
    	
    }
    	catch(Exception e){
    		System.err.println("something is  went  wrong ...");
    		e.printStackTrace();
    	}
    	
	return con;
}
}
