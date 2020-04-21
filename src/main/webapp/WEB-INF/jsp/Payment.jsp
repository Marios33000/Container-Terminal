<!DOCTYPE html>
<html lang="en">

<head>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        body {
            margin-top: 20px;
        }
    </style>
    <title>Payment Preview</title>
</head>

<body style="background-image:url('/images/payment.jpg');">
    <div class="container">
        <div class="row">
            <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3" style="background-color:beige">
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6">

                        <strong>${user.username}</strong>
                        <br>


                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                        <p>
                            <em>Receipt #:</em>
                        </p>
                    </div>
                    <br>
                    <br>
                </div>
                <div class="row">
                    <div class="text-center">
                        <br>
                        <br>
                        <h1>Preview Payment</h1>
                    </div>
                    <br>
                    <br>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Container Name</th>
                                <th>Type</th>
                             
                                <th>Discharged</th>
                                <th>Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:set var="count" value="0"  scope="page"/>     
                        <c:forEach items="${containers}" var="container" >
                            <tr>
                                <td class="col-md-9"><em>${container.getContainername()} </em></td>
                                <td class="col-md-1" style="text-align: center">${container.getType()}</td>
                              
                                <td class="col-md-1 text-center">  ${container.getDate()}</td>
                                <td class="col-md-1 text-center">$${prices.get(count).getTotal()}</td>
                            </tr>
                           
                             <c:set var="count" value="${count+1}" scope="page"/>  
                             </c:forEach>
                            
                            
                            
                           <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="text-right">
                                    <p>
                                        <strong>Subtotal: </strong>
                                    </p>
                                    <p>
                                        <strong>Tax: </strong>
                                    </p>
                                </td>
                                <td class="text-center">
                                    <p>
                                        <strong>$900</strong>
                                    </p>
                                    <p>
                                        <strong>$0.00</strong>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="text-right">
                                    <h4><strong>Total:</strong></h4>
                                </td>
                                <td class="text-center text-danger">
                                    <h4><strong>$900</strong></h4>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <button type="button" class="btn btn-success btn-lg btn-block">
                        Pay Now <span class="glyphicon glyphicon-chevron-right"></span>
                    </button>
                    <button type="button" href="/search" class="btn btn-success btn-lg btn-block">
                        Back<span class="glyphicon glyphicon-chevron-right"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
                        
                        
                             
 
                        
                        
    </body>

</html>