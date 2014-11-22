<!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
	Spree 2015 | Login</title>

<link rel="stylesheet" href="sheets/sheet1.css">

</head>
<div id='cssmenu'>
<body>
	<style>
body {
    background-image: url("images/bg1.jpg");
}
</style>
<!--Nav Bar-->
	<ul>
  <li><a href="home.jsp">Home</a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="events.jsp">Events</a></li>
  <li><a href="teams.jsp">Teams</a></li>
  <li><a href="live.jsp">Live</a></li>
  <li><a href="fixtures.jsp">Fixtures</a></li>
  <li><a href="results.jsp">Results</a></li>
  <li><a href="photos.jsp">Photos</a></li>
  <li><a href="videos.jsp">Videos</a></li> 
  <li><a href="pointstable.jsp">Points Table</a></li>
  <li><a href="login.jsp"><font color= "#666666">Login</font></a></li>
  <li><a href="register.jsp">Register</a></li>
  <li><a href="https://www.facebook.com/bitsspree">Follow us</a></li>
  <li><a href="about.jsp">About</a></li>
  
</ul>
</div>
<!--Login Box-->
<link rel="stylesheet" href="sheets/sheet2.css">

<script type="text/javascript">
$('#toggle-login').click(function(){
  $('#login').toggle();
});
</script>
<span href="#" class="button" id="toggle-login">Log in</span>

<%
session.invalidate();
%>
<div id="login">
<p>
You have successfully logged off
</p>
  <div id="triangle"></div>
  <h1>Login</h1>
  <form action="LoginServlet">
    <input type="username" placeholder="Username" name="username"/>
    <input type="password" placeholder="Password" name="password"/>
    <input type="submit" value="Login" />
  </form>
  <h2>${message}</h2>
  <c:remove var="message" scope="session" />
</div>
 
</body>
</html>