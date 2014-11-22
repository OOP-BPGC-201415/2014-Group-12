<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="spree.Participant"%>
<!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
	Spree 2015 | Live</title>

<link rel="stylesheet" href="sheets/sheet1.css">

</head>
<div id='cssmenu'>
<body>
<style>
body {
    background-image: url("images/bg1.jpg");
}
</style>
	<ul>
	<li><a href="home.jsp">Home</a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="events.jsp">Events</a></li>
  <li><a href="teams.jsp">Teams</a></li>
  <li><a href="live.jsp"><font color= "#666666">Live</font></a></li>
  <li><a href="fixtures.jsp">Fixtures</a></li>
  <li><a href="results.jsp">Results</a></li>
  <li><a href="photos.jsp">Photos</a></li>
  <li><a href="videos.jsp">Videos</a></li> 
  <li><a href="pointstable.jsp">Points Table</a></li>
  <% spree.Participant currentUser = (Participant)(session.getAttribute("currentSessionUser")); 
  if (currentUser!=null) { %>
  <li><a href="logout.jsp">Logout</a></li>
  <% } else { %>
  <li><a href="login.jsp">Login</a></li>
  <li><a href="register.jsp">Register</a></li>
  <% } %>
  <li><a href="https://www.facebook.com/bitsspree">Follow us</a></li>
  <li><a href="about.jsp">About</a></li> 
  <% if (currentUser != null) { %>
<p>Logged in as <p><h3><font color="#ff0000"><% out.print(currentUser.getDetails().getStudentName());%></font></h3>
<% } %> 
</ul>
</div>