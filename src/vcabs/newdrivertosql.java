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



@WebServlet("/newdrivertosql")
public class newdrivertosql extends HttpServlet {
    public void doPost( HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
//        response.setContentType("text/html");
        
    	String firstname=request.getParameter("firstname");
    	String lastname=request.getParameter("lastname");
    	String email=request.getParameter("email");
    	String dob=request.getParameter("dob");
    	String drivinglicno=request.getParameter("driving");
    	String mobilenumber=request.getParameter("mobilenumber");
    	String gender=request.getParameter("gender");
    	String years=request.getParameter("years");
    	String aadhar=request.getParameter("aadhar");
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
    		st.executeUpdate("INSERT INTO newdriver(firstname,lastname,email,dob,driving,mobilenumber,gender,years,aadhar) VALUES ('"+firstname+"','"+lastname+"','"+email+"','"+dob+"','"+drivinglicno+"','"+mobilenumber+"','"+gender+"','"+years+"','"+aadhar+"')");
    		response.sendRedirect("ressave.html");
    		
    	}
    	catch(Exception e)
    	{
    	//out.println(e);
    	response.sendRedirect("error.html");
    	}
    }
}