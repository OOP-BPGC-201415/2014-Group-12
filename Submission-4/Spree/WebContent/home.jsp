<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="spree.Participant"%>
<!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
	Spree 2015 </title>
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
  <li><a href="home.jsp"><font color= "#e066ff">Home</font></a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="events.jsp">Events</a></li>
  <li><a href="teams.jsp">Teams</a></li>
  <li><a href="fixtures.jsp">Fixtures</a></li>
  <li><a href="results.jsp">Results</a></li>
  <li><a href="photos.jsp">Photos</a></li>
  <li><a href="videos.jsp">Videos</a></li> 
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
<li><a>Logged in as <font color="white"><% out.print(currentUser.getDetails().getStudentName());%></a></font></li>

<% } %> 
</ul>

</div>

<div id='image'>
<img src="images/spree.jpg">
</div>
<p><center><font color="#f7f7f7" size="5px">SPREE 2014 HIGHLIGHTS</font></center></p>
<div id='video'><video width="800" controls>
  <source src="images/movie.mp4" type="video/mp4"></video></div>

<p><center><font font-family="sans-serif" color="#f7f7f7" size="5px">A  LOOKBACK</center></p>

<div class="img">
  <a target="_blank" href="photos.html">
    <img src="images/open1.jpg" alt="Klematis" width="310" height="200" >
  </a>
  <div class="desc">SPREE 2014 Opening Ceremony</div>
</div>
<div class="img">
  <a target="_blank" href="photos.html/magic">
    <img src="images/open2.jpg" alt="Klematis" width="310" height="200">
  </a>
  <div class="desc">SPREE 2014 Magical Moments</div>
</div>
<div class="img">
  <a target="_blank" href="photos.html/closing">
    <img src="images/open3.jpg" alt="Klematis" width="310" height="200">
  </a>
  <div class="desc">Spree 2014 Closing Ceremony</div>
</div>

<footer><center><font size="4px">Spree 2015 | Visit : http://www.bits-spree.com for more info</font></center></footer>
	</body>
	</html>