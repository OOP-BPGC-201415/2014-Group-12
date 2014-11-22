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
  <li><a href="Admin-home.jsp">Home</a></li>
  <li><a href="Admin-Sport.jsp"><font color= "#e066ff">Sport</font></a></li> 
  <li><a href="Admin-Events.jsp">Events</a></li>
  <li><a href="Admin-Results.jsp">Results</a></li>
  <li><a href="Admin-Finance.jsp">Finance</a></li>
  <li><a href="logout.jsp">Logout</a></li>
  <li><a href="Admin-Settings.jsp">Admin</a></li>
</ul>
</div>
 <div id="signup-form">
        
       
        <div id="signup-inner">
        
        	<div class="clearfix" id="header">
        	
        		
        
                <h1><br/>Fixtures</h1>

            
            </div>
			<p>Set Fixtures</p>

            
            <form id="send" action="FixtureServlet">
            	
                <p>

                <label for="teamA">Team A</label>
                <input id="teamA" type="text" name="teamA" value="" />
                </p>
                
                <p>
                <label for="teamB">Team B</label>
                <input id="teamB" type="text" name="teamB" value="" />
                </p>
                
               <p>
                    <label>Select Event*
                    </label>
                    <select name = "sportID">
                        <option value = "0">
                        </option>
                        <option value="1">Cricket
                        </option>
                        <option value="2">Football
                        </option>
                        <option value="3">Basketball
                        </option>
                        <option value="4">Volleyball
                        </option>
                        <option value="5">Tennis
                        </option>
                        <option value="6">Chess
                        </option>
                        <option value="7">Carrom
                        </option>
                        <option value="8">Table Tennis
                        </option>
                        <option value="9">Badminton
                        </option>
                    </select>
                </p>
                
                <p>
                <label for="date">Date (dd/mm/yyyy)</label>
                <input id="date" type="text" name="date" value="" />
                </p>
                
                <p>

                <label for="venue">Venue</label>
                <input id="venue" type="text" name="venue" value="" />
                </p>
                
                <p>
                <label for="time">Time (HH:MM)</label>
                <input id="time" type="text" name="time" value="" />
                </p>
                
               
                <button id="submit" type="submit">Create Fixture</button>
                </p>
                
            </form>
            
		
            </div>
        
     
        </div>
        
    
    </div>

</body>
</html>
