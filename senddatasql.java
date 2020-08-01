package vcabs;
import java.sql.DriverManager;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/senddatasql")
public class senddatasql extends HttpServlet {
    public void doPost( HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
//        response.setContentType("text/html");
    	HttpSession session=request.getSession();
    	String firstname=request.getParameter("firstname");
    	String lastname=request.getParameter("lastname");
    	String email=request.getParameter("email");
    	String pickuploc=request.getParameter("fromlo");
    	String droplocation=request.getParameter("tolo");
    	
    	String mobilenumber=request.getParameter("mobilenumber");
    	String gender=request.getParameter("gender");
    	String date=request.getParameter("date");
    	String time=request.getParameter("time");
    	String distance=request.getParameter("distance");
    	String duration=request.getParameter("duration");
    	String rateusd=request.getParameter("rateusd");
    	String rateinr=request.getParameter("rateinr");
        //out.println("Hello: "+" "+email+" "+comment);
//        Connection connection = null;
        try
        {
        	java.sql.Statement st;
        	java.sql.Connection con;
        	Class.forName("com.mysql.jdbc.Driver");
        	
        	//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","sarvesh13");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "sarvesh13");
        	st=con.createStatement();
        	st.executeUpdate("INSERT INTO passenger(firstname,lastname,email,pickuploc,droplocation,mobilenumber,gender,distance,dat,tim,duration,rateusd,rateinr) VALUES ('"+firstname+"','"+lastname+"','"+email+"','"+pickuploc+"','"+droplocation+"','"+mobilenumber+"','"+gender+"','"+distance+"','"+date+"','"+time+"','"+duration+"','"+rateusd+"','"+rateinr+"')");
        	response.sendRedirect("bill.jsp");
        }
        catch(Exception e)
        {
        //out.println(e);
        response.sendRedirect("error.html");
        }
    }
}