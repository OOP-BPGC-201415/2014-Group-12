<!DOCTYPE html>

<html lang="en-IN"><link href = "images/spree.png" rel="icon" type="image/gif">
<head><title>
	Spree 2015 </title>
	<link rel="stylesheet" href="sheets/sheet1.css">
	<link rel="stylesheet" href="sheets/sheet7.css">
</head>
<div id='cssmenu'>

	
<body>
	<style>
body {
    background-image: url("images/bg1.jpg");
}
</style>

<ul>
  <li><a href="Admin-home.jsp">Home</font></a></li>
  <li><a href="Admin-Sport.jsp">Sport</a></li>
  <li><a href="Admin-Events.jsp">Events</a></li>
  <li><a href="Admin-Results.jsp">Results</a></li>
  <li><a href="Admin-Finance.jsp">Finance</a></li> 
  <li><a href="logout.jsp">Logout</a></li>
  <li><a href="Admin-Settings.jsp"><font color= "#e066ff">Admin</font></a></li>
</ul>
</div>

 
    <div id="signup-form">
        
       
        <div id="signup-inner">
        
        	<div class="clearfix" id="header">
        	
        		
        
                <h1><br/>Settings</h1>

            
            </div>
			<p>Select an option</p>

            
            <form id="send" action="SettingsServlet">
            	
                <p>

                <label for="password_new">Set New Password</label>
                <input id="password_new" type="password" name="password" value="" />
                </p>
                
                <p>
                <label for="player">Block an User</label>
                <input id="player" type="text" name="player" value="" />
                </p>
                
               
                <button id="submit" type="submit">Apply</button>
                </p>
                
            </form>
            
		
            </div>
        
     
        </div>
        
    
    </div>

</body>
</html>

