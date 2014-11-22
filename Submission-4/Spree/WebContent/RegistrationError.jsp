         
           <!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
	Spree 2015 | Register</title>

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
  <li><a href="photos.jsp">Photos</a></li>
  <li><a href="videos.jsp">Videos</a></li> 
  <li><a href="login.jsp">Login</a></li>
  <li><a href="register.jsp"><font color= "#666666">Register</font></a></li>
  <li><a href="https://www.facebook.com/bitsspree">Follow us</a></li>
  <li><a href="about.jsp">About</a></li>
  
</ul>
</div>

 <link rel="stylesheet" type="text/css" href="sheets/sheet3.css"/>
    
      	<p><font color=red>Registration failed. Sorry for inconvenience.</font></p>
        <form action="/spree/register" class="register">
            <h1>Registration</h1>
            <fieldset class="row1">
                <legend>Account Details
                </legend>
                <p>
                    <label>Email *
                    </label>
                    <input type="text"/>
                    <label>Username *
                    </label>
                    <input type="text" placeholder="Username"/>
                </p>
                <p>
                    <label>Password*
                    </label>
                    <input type="password" placeholder="Password"/>
                    <label>Repeat Password*
                    </label>
                    <input type="password" placeholder"Password1"/>
                    <label class="obinfo">* obligatory fields
                    </label>
                </p>
            </fieldset>
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>Name *
                    </label>
                    <input type="text" class="long"/>
                </p>
                <p>
                    <label>Phone *
                    </label>
                    <input type="text" maxlength="10"/>
                </p>
                <p>
                    <label class="optional">Street
                    </label>
                    <input type="text" class="long"/>
                </p>
                <p>
                    <label>City *
                    </label>
                    <input type="text" class="long"/>
                </p>
                <p>
                    <label>Country *
                    </label>
                    <select>
                        <option>
                        </option>
                        <option value="1">India
                        </option>
                    </select>
                </p>
                <p>
                    <label class="optional">Institution *
                    </label>
                    <input class="long" type="text" value=""/>

                </p>
            </fieldset>
            <fieldset class="row3">
                <legend>Further Information
                </legend>
                <p>
                    <label>Register for Offbeat Events*
                    </label>
                    <select name = informalEvent>
                        <option value = "-1">
                        </option>
                        <option value="0">Pittu
                        </option>
                        <option value="1">Kabaddi
                        </option>
                        <option value="2">Ultimate Frisbee
                        </option>
                        <option value="3">Tug-of-War
                        </option>
                        <option value="4">Kho Kho
                        </option>
                        <option value="5">Spree Quiz
                        </option>
                    </select>
                </p>
                <p>
                    <label>Register for Pro Nights*
                    </label>
                    <select name = "register">
                        
                        <option value="0">
                        </option>
                        <option value="1">Pro Nights
                        </option>
                    </select>
                </p>
                <p>
                    <label>Receive Reminders
                    </label>
                    <input type="checkbox" value="" />
                </p>
                <div class="infobox"><h4>Helpful Information</h4>
                    <p>If you are a registered participant then Login to your account to register without any hassle.</p>
                </div>
            </fieldset>
            
            <div><button class="button">Register &raquo;</button></div>
        </form>
    </body>
</html>





