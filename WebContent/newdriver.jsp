<%@page import="java.sql.*"%>
<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String dob=request.getParameter("dob");
String drivinglicno=request.getParameter("driving");
String mobilenumber=request.getParameter("mobilenumber");
String gender=request.getParameter("gender");
String years=request.getParameter("years");
String aadhar=request.getParameter("aadhar");
try
{
	java.sql.Connection con;
	Class.forName("com.mysql.jdbc.Driver");
	//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","sarvesh13");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "sarvesh13");
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO newdriver(firstname,lastname,email,dob,driving,mobilenumber,gender,years,aadhar) VALUES ('"+firstname+"','"+lastname+"','"+email+"','"+dob+"','"+drivinglicno+"','"+mobilenumber+"','"+gender+"','"+years+"','"+aadhar+"')");
	response.sendRedirect("ressave.html");
	
}
catch(Exception e)
{
//out.println(e);
response.sendRedirect("error.html");
}
%>

