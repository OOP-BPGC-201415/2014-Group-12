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
  <li><a href="Admin-Events.jsp">Events</a></li>
  <li><a href="Admin-Results.jsp"><font color= "#e066ff">Results</font></a></li>
  <li><a href="Admin-Finance.jsp">Finance</a></li> 
  <li><a href="logout.jsp">Logout</a></li>
  <li><a href="Admin-Settings.jsp">Admin</a></li>
</ul>
</div>
 <div id="signup-form">
        
       
        <div id="signup-inner">
        
        	<div class="clearfix" id="header">
        	
        		
        
                <h1><br/>Update Scores</h1>
				<h3>Update Successfull</h3>
            
            </div>
			<p>Update Scores and Results</p>

            
            <form id="send" action="ResultsServlet">
            	
                <p>

                <label for="sportID">Sport ID</label>
                <input id="sportID" type="text" name="sportID" value="" />
                </p>
                
                <p>
                <label for="matchID">Match ID</label>
                <input id="matchID" type="text" name="matchID" value="" />
                </p>
                
                <p>

                <label for="score">Score </label>
                <input id="score" type="text" name="score" value="" />
                </p>
                
                <p>
                <label for="result">Result</label>
                <input id="result" type="text" name="result" value="" />
                </p>
                
               
                <button id="submit" type="submit">Update</button>
                </p>
                
            </form>
            
		
            </div>
        
     
        </div>
        
    
    </div>

</body>
</html>

