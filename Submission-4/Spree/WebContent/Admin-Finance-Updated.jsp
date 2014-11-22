<!DOCTYPE html>

<%@page import="spree.Finance"%>
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
  <li><a href="Admin-Results.jsp">Results</a></li>
  <li><a href="Admin-Finance.jsp"><font color= "#e066ff">Finance</font></a></li>
  <li><a href="logout.jsp">Logout</a></li>
  <li><a href="Admin-Settings.jsp">Admin</a></li>
</ul>
</div>
<div id="signup-form">
        
       
        <div id="signup-inner">
        
        	<div class="clearfix" id="header">
        	
        		
        
                <h1><br/>Finance Portal</h1>

            
            </div>
			<p>Please specify the amount in the field below</p>

            
            <form id="send" action="FinanceServlet">
			<% Finance f = (Finance)(request.getAttribute("bean")); 
			if (f!=null) { 
			%><p> Account Balance is 
			<% }	%>
			
            	${bean.balance}
            	<p>Your balance has been updated</p>
                <p>

                <label for="amount">Enter Amount </label>
                <input id="amount" type="text" name="amount" value="" />
                </p>
                 <button id="submit" type="submit" value="1" name="update">Update Balance</button>
                </p>
                 <button id="submit" type="submit" value="2" name="balance">Get Balance</button>
                </p>
            </form>
            
		
            </div>
        
     
        </div>
        
    
    </div>

</body>
</html>


