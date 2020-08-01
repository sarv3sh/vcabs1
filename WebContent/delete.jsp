<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*"%>
  <%@page import="java.sql.Statement"%>
   <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.Connection"%>
 <%
 String id = request.getParameter("u");
 String pickuploc = request.getParameter("v");
 String droploc = request.getParameter("w");
 String rateinr = request.getParameter("x");
 String rateusd = request.getParameter("y");
 String distance = request.getParameter("z");
 String date = request.getParameter("a");
 String time = request.getParameter("b");

 String name=(String)session.getAttribute("drivername");
 
 int no = Integer.parseInt(id);
 Class.forName("com.mysql.jdbc.Driver");
	//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","sarvesh13");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "sarvesh13");
	Statement stm = con.createStatement();	
	stm.executeUpdate("INSERT INTO administer(passengerid,driver,pickuplocation,droplocation,rateinr,rateusd,distance,dat,tim) VALUES ('"+id+"','"+name+"','"+pickuploc+"','"+droploc+"','"+rateinr+"','"+rateusd+"','"+distance+"','"+date+"','"+time+"')");
	
	stm.executeUpdate("DELETE FROM passenger WHERE id='"+id+"'");
	response.sendRedirect("dispassenger.jsp");
	%>
	
 
 