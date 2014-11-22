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
  <li><a href="Admin-Sport.jsp">Sport</a></li>
  <li><a href="Admin-Events.jsp"><font color= "#e066ff">Events</font></a></li>
  <li><a href="Admin-Results.jsp">Results</a></li>
  <li><a href="Admin-Finance.jsp">Finance</a></li>
  <li><a href="logout.jsp">Logout</a></li>
  <li><a href="Admin-Settings.jsp">Admin</a></li>
</ul>
</div>

   
    <div id="signup-form">
        
       
        <div id="signup-inner">
        
        	<div class="clearfix" id="header">
        	
        		
        
                <h1><br/> Manage Rules</h1>

            
            </div>
			<p>Please specify the contents to set a new Rule</p>

            
            <form id="send" action="RulesServlet">
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

                <label for="ageLimit">AgeLimit </label>
                <input id="ageLimit" type="text" name="ageLimit" value="" />
                </p>
                
                <p>
                <label for="minNoOfPlayers">min No Of Players</label>
                <input id="minNoOfPlayers" type="text" name="minNoOfPlayers" value="" />
                </p>
                
                <p>

                <label for="maxNoOfPlayers">max No Of Players </label>
                <input id="maxNoOfPlayers" type="text" name="maxNoOfPlayers" value="" />
                </p>
                
                <p>
                <label for="minNoOfTeams">min No Of Teams</label>
                <input id="minNoOfTeams" type="text" name="minNoOfTeams" value="" />
                </p>
                
                <p>

                <label for="maxNoOfTeams">max No Of Teams</label>
                <input id="maxNoOfTeams" type="text" name="maxNoOfTeams" value="" />
                </p>
                
                <p>
                <label for="rulesDescription">Rules</label>
                <input id="rulesDescription" type="text" name="rulesDescription" value="" />
                </p>
                
               
                <button id="submit" type="submit">Apply</button>
                </p>
                
            </form>
            
		
            </div>
        
     
        </div>
        
    
    </div>

</body>
</html>