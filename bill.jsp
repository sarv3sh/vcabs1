<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DISPLAY DATA</title>
<link href="bootstrap.css" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="https://f1.pngfuel.com/png/548/627/598/smiley-icon-taxi-symbol-passenger-yellow-cab-icon-design-logo-text-png-clip-art.png">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@800&display=swap" rel="stylesheet">
	<link href="cabdup.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Montserrat+Subrayada:wght@700&family=Playfair+Display&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;
}
  .content{
  border-collapse: collapse;
  margin : 25px 0;
  font-size:1.1em;
  min-width:600px;
  border-radius:5px 5px 0 0;
  overflow:hidden;
  box-shadow: 0 0 20px rgba(0,0,0,0.15);
  }
  .content thead tr{
  background-color: #009879;
  color:white;
  
  font-weight: bold;
      justify-content: center;
  
  }
  .content th,
  .content td{
  padding : 12px 5px;
  }
  
  .content tbody tr{
  border-bottom : 2px solid #dddddd; 
  }
  
  .content tbody tr:nth-of-type(even){
    background-color: #f3f3f3; 
    color: grey;
  }
  
  
 
  
  
  
  
</style>

</head>


<body>

<nav class="navbar navbar-expand-lg navbar-light " style="font-size: x-large;color: white;    background-color: black;">
  <a class="navbar-brand" style="color: rgb(251 251 251 / 90%);font-size: xx-large;height: auto;" href="#">V-CABS</a>
  <button class="navbar-toggler" style="background-color: grey;" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" style="color: white;" id="navbarNav">
    <ul class="navbar-nav" >
      <li class="nav-item active">
        <a class="nav-link" style="color: rgb(251 251 251 / 90%);"  href="phonever1.html">RIDE <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: rgb(251 251 251 / 90%);"  href="exdriver.html">DRIVE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: rgb(251 251 251 / 90%);"  href="newdriver.html">JOIN US</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: rgb(251 251 251 / 90%);"  href="amount.html">FAIR</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: rgb(251 251 251 / 90%);"  href="admin.html">ADMIN</a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  style="color: rgb(251 251 251 / 90%);" href="index.html">HOME</a>
      </li>
     
    </ul>
  </div>
</nav>

    <div style="background-image: url(https://www.arraymedicalcenter.com/wp-content/uploads/2017/01/sc1-header-blurry-background.jpg);">
<h1 style="text-align: center; padding-top: 30px;font-family: 'Raleway', sans-serif;margin-top: 0px; height: 100px;" ><strong>YOUR ORDER</strong></h1>
</div>

<h1 style="margin: 0px;padding-top: 20px ; text-align:center ; font-family: 'Montserrat Subrayada', sans-serif;">Thanks For Your Business!</h1>
<h2 style="padding-top: 30px;text-align:center; font-size: 30px; font-family: 'Montserrat Subrayada', sans-serif;font-family: 'Playfair Display', serif;"></h2>
		<table style=" " class="table table-striped table-dark" >
		
		
		<%
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","sarvesh13");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "sarvesh13");
			String Query = "SELECT * FROM passenger ORDER BY id DESC LIMIT 1";
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery(Query);
			while(rs.next())
			{
				%>
				<tbody class="content ">
				
				
				
				<tr>
   			 <th>Id:</th> <td> <%=rs.getInt("id") %> </td>
   			 
   
 	   </tr>
		<tr>
   			 <th>Name:</th> <td> <%=rs.getString("firstname") %></td>
   
 	   </tr>
 	   <tr>
 		   <th>From Location:</th> <td><%=rs.getString("pickuploc") %></td>
    
  		</tr>
		  <tr>
 			   <th>To Location:</th> <td><%=rs.getString("droplocation") %></td>
    
		  </tr>
		   <tr>
 			   <th>Mobile Number:</th> <td><%=rs.getString("mobilenumber") %></td>
    
		  </tr>
		  <tr>
		  
		  <th>Time: </th><td> <%=rs.getString("tim") %> </td>
		  
		  </tr>
		   <tr>
 			   <th>Date:</th><td> <%=rs.getString("dat") %></td>
    
		  </tr>
		  
		  <tr>
		       <th>Cancel booking:</th>
 			  <th> <a href='cancelbooking.jsp?u=<%=rs.getInt("id") %>' class="btn btn-danger" style="text-align:center;margin-left: 50px;">Cancel Booking</a></th>
    
		  </tr>
		  
		 
			
				
				</tbody>
				
				
			
					
			
			<% 	
			}
			
		}
		catch(Exception ex)
		{
			response.sendRedirect("error.html");
			ex.printStackTrace();
			
		}%>
	</table>
		
				
		
		
		
		
		<h2 style="padding-top: 30px;text-align:center; font-size: 30px; font-family: 'Montserrat Subrayada', sans-serif;font-family: 'Playfair Display', serif;">Notice Something wrong? <a style="color: blue;" href="index.html">contact us</a> and we will be happy to help.</h2>
		 
		  
		<footer class="footer navbar-static-bottom"  style="background-color: black;margin-top: 410px;">
      <div class="container" style="background-color: black; text-align: center; padding-top: 20px">
        <a href="#top" class="back-to-top">
          <i class="fa fa-angle-up fa-2x" aria-hidden="true"></i>
        </a>
        <div class="social-links">
          <a  href="https://twitter.com/IAmPSarvesh" target="_blank" style="color:white;">
            <i class="fa fa-twitter fa-inverse"></i>
            Twitter
          </a>
          <a style="padding-left: 20px;color:white; " href="https://www.instagram.com/13_sarvesh/" target="_blank">
            <i class="fa fa-codepen fa-inverse"></i>
            Instagram
          </a>
          <a style="padding-left: 20px; color:white;" href="https://www.linkedin.com/in/sarvesh-p-developer/?trk=public-profile-join-page" target="_blank">
            <i class="fa fa-linkedin fa-inverse"></i>
            Linkedin
          </a>
          <a style="padding-left: 20px; color:white;" href="https://github.com/sarv3sh/p" target="_blank">
            <i class="fa fa-github fa-inverse"></i>
            Github
          </a>
        </div>

        <hr />

       
        <p class="footer__text" style="color: white; text-align: center;" >
           2020 - Template developed by Sarvesh
         
        </p>
 
      
        
    
      </div>
    </footer>
</body>
</html>