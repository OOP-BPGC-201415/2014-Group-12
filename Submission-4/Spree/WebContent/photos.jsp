<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="spree.Participant"%>
<!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
	Spree 2015 | Photos</title>

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
  <li><a href="fixtures.jsp">Fixtures</a></li>
  <li><a href="results.jsp">Results</a></li>
  <li><a href="photos.jsp"><font color= "#e066ff">Photos</font></a></li>
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
    
<link rel="stylesheet" href="sheets/sheet6.css">
 <div id="warp">
<ul id="gallery-container">
  <li class="gallery-item">

    <input checked="checked" type="radio" name="gallery-list" class="gallery-selector" value="" id="gallery-item1" />
    <img src="images/ina.jpg" class="gallery-fullsize" alt="location bateau 135ch">  
    <label for="gallery-item1" class="gallery-label">
      <img src="images/ina.jpg" class="gallery-preview"  alt="location bateau 135ch"/>
    </label>
  </li>
  <li class="gallery-item">

    <input type="radio" name="gallery-list" class="gallery-selector" value="2.jpg" id="gallery-item2" />
    <img src="images/ch.jpg" class="gallery-fullsize"  alt="location bateau 135ch" />
    <label for="gallery-item2" class="gallery-label">
      <img src="images/ch.jpg" class="gallery-preview"  alt="location bateau 135ch"/>
    </label>
  </li>
  <li class="gallery-item">

    <input type="radio" name="gallery-list" class="gallery-selector" value="3.jpg" id="gallery-item3" />
    <img src="images/cr.jpg" class="gallery-fullsize"  alt="location bateau 135ch" />
    <label for="gallery-item3" class="gallery-label">
      <img src="images/cr.jpg" class="gallery-preview"  alt="location bateau 135ch"/>
    </label>
  </li>
  <li class="gallery-item">

    <input type="radio" name="gallery-list" class="gallery-selector" value="4.jpg" id="gallery-item4" />
    <img src="images/open2.jpg" class="gallery-fullsize"  alt="location bateau 135ch" />
    <label for="gallery-item4" class="gallery-label">
      <img src="images/open2.jpg" class="gallery-preview"  alt="location bateau 135ch"/>
    </label>
  </li>
  <li class="gallery-item">

    <input type="radio" name="gallery-list" class="gallery-selector" value="5.jpg" id="gallery-item5" />
    <img src="images/fo.jpg" class="gallery-fullsize"  alt="location bateau 135ch" />
    <label for="gallery-item5" class="gallery-label">
      <img src="images/fo.jpg" class="gallery-preview"  alt="location bateau 135ch"/>
    </label>
  </li>
  <li class="gallery-item">

    <input type="radio" name="gallery-list" class="gallery-selector" value="6.jpg" id="gallery-item6" />
    <img src="images/thr.jpg" class="gallery-fullsize"  alt="location bateau 135ch" />
    <label for="gallery-item6" class="gallery-label">
      <img src="images/thr.jpg" class="gallery-preview"  alt="location bateau 135ch"/>
    </label>
  </li>
  <li class="gallery-item">

    <input type="radio" name="gallery-list" class="gallery-selector" value="7.jpg" id="gallery-item7" />
    <img src="images/open3.jpg" class="gallery-fullsize"  alt="location bateau 135ch" />
    <label for="gallery-item7" class="gallery-label">
      <img src="images/open3.jpg" class="gallery-preview"  alt="location bateau 135ch"/>
    </label>
  </li>
  
</ul>
</div>   

<footer><center><font size="4px" color="#f7f7f7">Spree 2015 | Visit : http://www.bits-spree.com for more info</font></center></footer>
</body>