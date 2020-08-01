<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*"%>
  <%@page import="java.sql.Statement"%>
   <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.Connection"%>
 <%
 String id = request.getParameter("u");
 int no = Integer.parseInt(id);
 
 Class.forName("com.mysql.jdbc.Driver");
	//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","sarvesh13");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "sarvesh13");
	Statement stm = con.createStatement();	
	stm.executeUpdate("DELETE FROM passenger WHERE id='"+id+"'");
	response.sendRedirect("phonever1.html");
	%>
	
 
 