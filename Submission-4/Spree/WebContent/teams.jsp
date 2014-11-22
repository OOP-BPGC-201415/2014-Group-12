<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="spree.Participant"%>
<!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
  Spree 2015 | Teams</title>

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
  <li><a href="teams.jsp"><font color= "#e066ff">Teams</font></a></li>
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
<link rel="stylesheet" href="sheets/sheet2.css">

<script type="text/javascript">
$('#toggle-login').click(function(){
  $('#login').toggle();
});
</script>
<span href="#" class="button" id="toggle-login">Info</span>

<div id="login">
  <div id="triangle"></div>
  <h1>Team and Player Info</h1>
  <form>
    
<label>
    <center><select>
        <option selected>*   Get Team and Player Info by   *</option>
        <option>By Sport</option>
        <option>By Institute</option>
    </select></center>
</label>

    <input type="submit" value="Submit" />
  </form>
</div>