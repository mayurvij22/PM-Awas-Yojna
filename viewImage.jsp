

<%@ page import="java.sql.*"%>

	<%@ page import="java.io.*"%>
	<%@ page import="mayur.*"%>
	<% Blob image = null;

	Connection con = null;

	byte[ ] imgData = null ;

	Statement stmt = null;

	ResultSet rs = null;

	try {




		con =JDBCConnect.connect();

		stmt = con.createStatement();

		rs = stmt.executeQuery("select photo from viewbills where awasId = '72'");

		if (rs.next()) {

		image = rs.getBlob(1);


		imgData = image.getBytes(1,(int)image.length());

	} else {

			out.println("Display Blob Example");

			out.println("image not found for given id");

		return;

	}


// display the image

response.setContentType("image/gif");

OutputStream o = response.getOutputStream();

o.write(imgData);


o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");



return;

} finally {

try {

rs.close();


stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();


}

}

%>