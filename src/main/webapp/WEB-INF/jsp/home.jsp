<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}

    </style>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   

</head>
<body>
<div class="row">
    <div class="col-75">
        <div class="container">
            <form method="post"  action="/pay" >
                <div class="col-50">
                    <h3>Payment</h3>
                    <label>Accepted Cards</label>
                    <div class="icon-container">
                        <i class="fa fa-cc-visa" style="color:navy;"></i>
                        <i class="fa fa-cc-amex" style="color:blue;"></i>
                        <i class="fa fa-cc-mastercard" style="color:red;"></i>
                        <i class="fa fa-cc-discover" style="color:orange;"></i>
                    </div>
                    <label for="price">Total</label>
                    <input type="hidden" id="price" name="price" >
                    <input type="text" id="price1" name="price1" disabled>
                    <label for="currency">Currency</label>
                    <input type="hidden" id="currency" name="currency" placeholder="USD" value="USD">
                    <input type="text" id="currency1" name="currency1" placeholder="USD" value="USD" disabled>
                    <label for="method">Payment Method</label>
                    <input type="hidden" id="method" name="method" placeholder="Paypal" value="paypal">
                    <input type="text" id="method1" name="method1" placeholder="Paypal" value="paypal" disabled>
                    <label for="intent">Intent</label>
                    <input type="hidden" id="intent" name="intent" value="sale">
                    <input type="text" id="intent1" name="intent1" value="sale" disabled>
                    <label for="description">Payment Description</label>
                    <input type="hidden" id="description" name="description" placeholder="Payment " value="payment">
                    <input type="text" id="description1" name="description1" placeholder="Payment " value="payment" disabled>

                </div>

                <input type="submit" value="Continue to checkout" class="btn">
            </form>
        </div>
    </div>
<!--    <div class="col-25">
        <div class="container">
            <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>
            <p><a href="#">Product 1</a> <span class="price">$1</span></p>
            <p><a href="#">Product 2</a> <span class="price">$4</span></p>
            <p><a href="#">Product 3</a> <span class="price">$3</span></p>
            <p><a href="#">Product 4</a> <span class="price">$2</span></p>
            <hr>
            <p>Total <span class="price" style="color:black"><b>$10</b></span></p>
        </div>-->
    </div>
</div>

<script
  src="https://code.jquery.com/jquery-3.5.0.js"
  integrity="sha256-r/AaFHrszJtwpe+tHyNi/XCfMxYpbsRg2Uqn0x3s2zc="
  crossorigin="anonymous"></script>
<script>
    
    $(document).ready(function(){
       $("#price").replaceWith(" <input type='hidden' id='price' name='price' value='"+localStorage.getItem("total")+"' >");
       $("#price1").replaceWith(" <input type='text' id='price1' name='price1' value='"+localStorage.getItem("total")+"' disabled>");
    });
        
    
    
    
</script>

</body>
</html>
