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

	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@800&display=swap" rel="stylesheet">
	<link href="cabdup.css" rel="stylesheet">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4CAF50;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 190px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>

</head>


<body>

<nav class="navbar navbar-expand-lg navbar-light " style="font-size: x-large;color: white;    background-color: black;    margin-bottom: 0px;">
  <a class="navbar-brand" style="color: rgb(251 251 251 / 90%);font-size: xx-large;height: auto;" href="#">V-CABS</a>
  <button class="navbar-toggler" style="background-color: grey;" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" style="color: white; margin-left: 50%;" id="navbarNav">
    <ul class="navbar-nav" >
      <li class="nav-item active">
        <a class="nav-link" style="color: rgb(251 251 251 / 90%);"  href="phonever1.html">RIDE <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: rgb(251 251 251 / 90%);"  href="exdriver.html">DRIVE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: rgb(251 251 251 / 90%);"  href="newdriver.html">JOINUS</a>
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
<h1 style="text-align: center; padding-top: 30px;font-family: 'Raleway', sans-serif;margin-top: 0px; height: 100px;" ><strong>BOOKED PASSENGER</strong></h1>
</div>

<div class="sidebar">
  <a href="viewunbooked.jsp">Booked passenger</a>
  <a href="viewunbookedpass.jsp">Un-booked passenger</a>
  <a href="cabinf.jsp">Driver Information</a>
 
</div>

<div class="content" >
		<table class="table table-striped table-dark">
		<thead  style="font-size: larger;">
		<tr>
			<th scope="col">Driver Name</th>
			<th scope="col">Passenger id</th>
			<th scope="col">Passenger Pickup location</th>
			<th scope="col">Passenger drop location</th>
			<th scope="col">rate inr</th>
			<th scope="col">rate usd</th>
			<th scope="col">distance</th>
			<th scope="col">date</th>
			<th scope="col">time</th>
			
			
			
			
			
			
		</tr>
		</thead>
		<tr>
		<%
		
				
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","sarvesh13");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "sarvesh13");
			String Query = "SELECT * FROM administer";
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery(Query);
			while(rs.next())
			{
				%>
				
				<tbody class="table-striped ">
				<tr>
				
				<td><%=rs.getString("driver") %></td>
				<td scope="row"><%=rs.getInt("passengerid") %></td>
				<td><%=rs.getString("pickuplocation") %></td>
				<td><%=rs.getString("droplocation") %></td>
				<td><%=rs.getString("rateinr") %></td>
				<td><%=rs.getString("rateusd") %></td>
				<td><%=rs.getString("distance") %></td>
				<td><%=rs.getString("dat") %></td>
				<td><%=rs.getString("tim") %></td>
				
				
				<td>
				
				
				</td>
				</tr>
				</tbody>
				
				
				<%
				
			}
			
		}
		catch(Exception ex)
		{
			response.sendRedirect("error.html");
			ex.printStackTrace();
			
		}
		
		
		
		%>
		</tr>
		

		
		</table>
		</div>
		
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