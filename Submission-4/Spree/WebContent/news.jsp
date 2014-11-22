<%@ include file="header.jsp" %>
<!DOCTYPE html>

<html>
<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>Spree 2015 | News</title>
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
  <li><a href="news.jsp"><font color= "#e066ff">News</font></a></li>
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

<link rel="stylesheet" type="text/css" href="sheets/sheet4.css">
  <h3> Catch all the Latest News and Highlights</h3>
      <div id="slideshow-wrap">
        <input type="radio" id="button-1" name="controls" checked="checked"/>
        <label for="button-1"></label>
        <input type="radio" id="button-2" name="controls"/>
        <label for="button-2"></label>
        <input type="radio" id="button-3" name="controls"/>
        <label for="button-3"></label>
        <input type="radio" id="button-4" name="controls"/>
        <label for="button-4"></label>
        <input type="radio" id="button-5" name="controls"/>
        <label for="button-5"></label>
        <label for="button-1" class="arrows" id="arrow-1">></label>
        <label for="button-2" class="arrows" id="arrow-2">></label>
        <label for="button-3" class="arrows" id="arrow-3">></label>
        <label for="button-4" class="arrows" id="arrow-4">></label>
        <label for="button-5" class="arrows" id="arrow-5">></label>
        <div id="slideshow-inner">
            <ul>
                <li id="slide1">
                    <img src="images/badminton.jpg" />
                    <div class="description">
                        <input type="checkbox" id="show-description-1"/>
                        <label for="show-description-1" class="show-description-label">i</label>
                        <div class="description-text">
                            <h2>Badminton</h2>
                            <p>Spree 2015 presents Badminton</p>
                        </div>
                    </div>
                </li>
                <li id="slide2">
                    <img src="images/basketball.jpg" />
                    <div class="description">
                        <input type="checkbox" id="show-description-2"/>
                        <label for="show-description-2" class="show-description-label">i</label>
                        <div class="description-text">
                            <h2>Basketball</h2>
                            <p>Spree 2015 presents Basketball</p>
                        </div>
                    </div>
                </li>
                <li id="slide3">
                    <img src="images/cricket.jpg" />
                    <div class="description">
                        <input type="checkbox" id="show-description-3"/>
                        <label for="show-description-3" class="show-description-label">i</label>
                        <div class="description-text">
                            <h2>Cricket</h2>
                            <p>Spree 2015 presents Cricket</p>
                        </div>
                    </div>
                </li>
                <li id="slide4">
                    <img src="images/football.jpg" />
                    <div class="description">
                        <input type="checkbox" id="show-description-4"/>
                        <label for="show-description-4" class="show-description-label">i</label>
                        <div class="description-text">
                            <h2>Football</h2>
                            <p>Spree 2015 presents Football</p>
                        </div>
                    </div>
                </li>
                <li id="slide5">
                    <img src="images/volleyball.jpg" />
                    <div class="description">
                        <input type="checkbox" id="show-description-5"/>
                        <label for="show-description-5" class="show-description-label">i</label>
                        <div class="description-text">
                            <h2>Volleyball</h2>
                            <p>Spree 2015 presents Volleyball</p>
                        </div>
                    </div>
                </li>
            </ul>

        </div>
    </div>
    
</body>

