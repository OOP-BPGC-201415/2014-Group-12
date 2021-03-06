<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="spree.*"
     import="java.util.ArrayList"%>
<!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
	Spree 2015 | Fixtures</title>

<link rel="stylesheet" href="sheets/sheet1.css">
<link rel="stylesheet" href="sheets/sheet9.css">
<style>
body {
    background-image: url("images/bg1.jpg");
}
</style>
</head>
	<body>
		<div id='cssmenu'>
	<ul>
  <li><a href="home.jsp">Home</a></li>
  <li><a href="news.jsp">News</a></li>
  <li><a href="events.jsp">Events</a></li>
  <li><a href="teams.jsp">Teams</a></li>
  <li><a href="fixtures.jsp">Fixtures</a></li>
  <li><a href="results.jsp"><font color= "#e066ff">Results</font></a></li>
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
		<body>
 <div id="wrapper">
  <h1>Results</h1>
  
  <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span>Sport</span></th>
        <th><span>Team-1</span></th>
        <th><span>Team-2</span></th>
        <th><span>Score</span></th>
        <th><span>Results</span></th>
      </tr>
    </thead>
    <tbody>	
			<% if (currentUser != null) {
				ArrayList<Fixture> fixtures = currentUser.getFixtures();
				for (int i=0; i<fixtures.size(); i++) {
					%>
					<tr>
					<td>
					<%
					out.println(fixtures.get(i).getSport().getSportName());
					%>
					</td>
					<td>
					<%
					out.println(fixtures.get(i).getTeams().get(0).getTeamName());
					%>
					</td>
					<td>
					<%
					out.println(fixtures.get(i).getTeams().get(1).getTeamName());
					%>
					</td>
										<td>
					<%
					out.println(fixtures.get(i).getScore());
					%>
					</td>
					<td>
					<%
					out.println(fixtures.get(i).getResult());
					%>
					</td>
					<%
				}
				%>
				</tr>
				<%
			 } %> 
    </tbody>
  </table>
 </div> 
</body>