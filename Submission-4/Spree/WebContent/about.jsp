<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="spree.Participant"%>
<!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
	Spree 2015 | About</title>
<link rel="stylesheet" href="sheets/sheet1.css">
<link rel="stylesheet" href="sheets/sheet8.css">
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

<div id="container">
<h1><a>Spree 2015</a></h1>
  <div id="wrapper">
    <div id="content">
    	<font size="3px">
      <p><strong>Spree 2015 - Challenge your Limits</strong></p>
      <p>Spree 2015 will be held from March 12, 2015 to March 15, 2015. Themed Challenge you Limits, Spree 2015 aims
         to send out a clear message to the participants that there is no greater glory than playing the game to their
         full potential. It is time to push boundaries, take risks, redefine the norms, and not limit your challenges 
         but Challenge your Limits.</p>
      <p>Passion and love for sport is something you find in everyone at BITS Pilani K.K. Birla Goa Campus.
         Combine this with our sprawling campus and state-of-the-art sports facilities, and you have the ideal
         platform for one of the biggest sports festivals in the country.</p>
      <p>Spree, over the years, has encouraged sporting talent through the true spirit of 
         sportsmanship. In the quest to bring out the competitive edge, Spree offers a plethora of fiercely  
         contested main events and special events alongside. Cricket is accompanied by gully cricket, Football by 
         futsal, Chess by anti Chess and so on. Badminton, Volleyball, Lawn Tennis, Table Tennis and Carrom 
         further up the spirit of competition. In addition to this, there is an electric mix of Off-Beat events 
         such as Pool, Kabaddi, Kho-Kho, Bowling, Air Hockey and Go Karting. Also for the first time ever, the 
         Futsal tournament went national in the previous edition with eliminations in 5 cities : Pune, Mumbai, 
         Bangalore, Delhi and Goa.</p>
      <p>In addition to heart pounding on - field action, Spree offers vibrant entertainment. Performers from all 
      	 over have enthralled the audience with their adrenaline pumping performances such as Free-style Football,
      	 acrobatics, juggling, laser show, fire performances and many more.</p>
      <p>The electrifying experience coupled with captivating events, the vibrant crowd and festive Goan atmosphere
         have helped us become the biggest Inter-Collegiate Sports and Entertainment festival in the country, and
         Spree 2015 promises to be the sports and social extravaganza everyone has been waiting for.</p>
      <p><strong>Events in Goa :</strong></p>
      <p>Spree offers a plethora of fiercely contested main events and special events alongside. Cricket is accompanied
         by gully cricket, Football by futsal, Chess by anti - Chess and so on.Badminton, Volleyball, Lawn Tennis, 
         Table Tennis and Carrom further up the spirit of competition. In addition to this, there is an electric mix
         of Off-Beat events such as Ultimate Frisbee, Tug of War, Pool, Kabaddi, Kho-Kho, Bowling, Air Hockey and Go Karting.
         Also for the first time ever, the Futsal tournament went national in the previous edition with eliminations in 
         5 cities : Pune, Mumbai, Bangalore, Delhi and Goa.</p>
   </font>
    
    </div>
  </div>
  <div id="navigation">
    <p><strong><font size="4px">Contact</font></strong></p>
    <ul>
      <li><a href="https://www.facebook.com/rohan.noronha.18/"><img href="images/fb.png"><font family="sans-serif" size="3px">Rohan Noronha</font></a></li>
      <li><a href="https://www.facebook.com/varun.perla"><font family="sans-serif" size="3px">Varun Perla</font></a></li>
    </ul>
  </div>
</div>
</div>
</html>