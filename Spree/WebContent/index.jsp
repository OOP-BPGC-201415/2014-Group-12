<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="spree.Participant"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head>
	<title>Spree 2015 </title>
	<link rel="stylesheet" href="sheets/sheet1.css">
	<style>
	body {
	    background-image: url("images/bg1.jpg");
	}
	</style>
</head>
<body>
<div id='cssmenu'>
	<ul>
  <li><a href="index.jsp"><font color= "#666666">Home</font></a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="events.jsp">Events</a></li>
  <li><a href="teams.jsp">Teams</a></li>
  <li><a href="live.jsp">Live</a></li>
  <li><a href="fixtures.jsp">Fixtures</a></li>
  <li><a href="results.jsp">Results</a></li>
  <li><a href="photos.jsp">Photos</a></li>
  <li><a href="videos.jsp">Videos</a></li> 
  <li><a href="pointstable.jsp">Points Table</a></li>
  <li><a href="login.jsp">Login</a></li>
  <li><a href="register.jsp">Register</a></li>
  <li><a href="https://www.facebook.com/bitsspree">Follow us</a></li>
  <li><a href="about.jsp">About</a></li> 
</ul>
<%
	spree.Participant currentUser = (Participant)(session.getAttribute("currentSessionUser"));
%>
<h2>Welcome <font color="#121212"><% out.print(currentUser.getDetails().getStudentName());%></font>.</h2>
</div>
</body>
</html>