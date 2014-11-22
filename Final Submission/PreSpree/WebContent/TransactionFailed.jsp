<!--DOCTYPE HTML-->
<html lang="en-IN">
<head><title>
  Bank Gateway </title>
<link rel="stylesheet" href="sheets/sheet1.css">
<link rel="stylesheet" href="sheets/style.css">
</head>
<div id='cssmenu'>
<body>
<style>
body {
    background-image: url("images/bg1.jpg");
}
</style>
</div>
  <form action="/PreSpree/validateTransaction" method="POST" class="checkout">
    <div class="checkout-header">
      <h1 class="checkout-title">
       Payment Portal
      </h1>
    </div>
    <h2>
    Amount to be Paid - ${amountToBePaid.balance}
    </h2>
    <p>
    <font size = 3px color="red">Incorrect card details,Please try again.</font>
    <p>
    <p><font size = 2px>Select Type of card</font>
    
       <input type="radio" name = "cardType" value="clicked"/>
       <label class="gender"><font size = 2px>Credit Card</font></label>
       <input type="radio" name = "cardType" value="clicked"/>
       <label class="gender"><font size = 2px>Debit Card</font> </label>
    </p>
    <p>
       <input type="radio" name = "Type" value="clicked"/>
       <label class="gender"><font size = 2px>VISA</font></label>
       <input type="radio" name = "Type" value="clicked"/>
       <label class="gender"><font size = 2px>Master Card</font> </label>
    </p>
    <p>
    <font size = 2px>Card Number</font><input type="text" name = "cardNo" class="checkout-input checkout-card" >
    </p>
    <p>
      <font size = 2px>Name on the Card</font><input type="text" name = "name" class="checkout-input checkout-name">
    </p>
    <p>
      <font size = 2px>Expiry Month and Year(MM/YY)</font>
      <input type="text" class="checkout-input checkout-exp" name = "expiryMonth" placeholder="MM">
      <input type="text" class="checkout-input checkout-exp" name = "expiryYear" placeholder="YY">
    </p>
    <p>
      <font size = 2px>CVV</font><input type="text" name = "cvv" class="checkout-input checkout-cvc" placeholder="CVV">
    </p>
    <p>
      <input type="submit" value="Pay" class="checkout-btn">
    </p>
  </form>

</body>
</html>