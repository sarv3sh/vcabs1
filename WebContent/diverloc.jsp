<%@page import="java.sql.*"%>
<%
String driverloc=request.getParameter("driverloc");
String drivername=request.getParameter("drivername");
String drivernumber=request.getParameter("drivernumber");

try
{
	java.sql.Connection con;
	Class.forName("com.mysql.jdbc.Driver");
	//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","sarvesh13");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "sarvesh13");
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO driverlocation(driverloc,name,mobilenumber) VALUES ('"+driverloc+"','"+drivername+"','"+drivernumber+"')");
	response.sendRedirect("matched.html");
	
}
catch(Exception e)
{
//out.println(e);
response.sendRedirect("error.html");
}
%>

