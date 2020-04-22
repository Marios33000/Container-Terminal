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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"
        type="text/javascript"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css"
              rel="stylesheet" type="text/css" />
        <style>
            body {
                margin-top: 20px;
            }
        </style>
        <title>Payment Preview</title>
    </head>

    <body style="background-image:url('/images/payment.jpg');">
        <div class="container-fuid">
            <div class="row">
                <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3" style="background-color:beige">
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">

                            <strong>${user.username}</strong>
                            <div>${user.address}</div>
                            <div>${user.afm}</div>
                            <div>${user.doy}</div>
                            <br>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                            <p>
                                <em>Invoice #:</em>
                            </p>
                        </div>
                        <br>
                        <br>
                    </div>
                    <div class="row">
                        <div class="text-center">                        
                            <h1>Preview Payment</h1>
                        </div>
                        <br>
                        <br>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th style="font-size: 95%">Container</th>
                                    <th style="font-size: 85%">Type</th>                             
                                    <th style="font-size: 85%">Discharged Date</th>
                                    <th style="font-size: 85%">Paid Date</th>
                                    <th style="font-size: 85%">Date Fee</th>
                                    <th style="font-size: 85%">Type Fee</th>
                                    <th style="text-align: center; font-size: 85%"><u>Amount</u></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="count" value="0"  scope="page"/>     
                                <c:forEach items="${containers}" var="container" varStatus="loop">
                                    <tr>
                                        <td class="col-md-3" style="font-size: 96%"><em>${container.getContainername()} </em></td>
                                        <td class="col-md-1" style="font-size: 90%">${container.getType()}</td>
                                        <td class="col-md-2 text-center" style="font-size: 90%"><input id="datepicker${loop.index}" type="text" style="width:70%; background-color: transparent; border: none" format="dd-mm-yyyy" value="${container.getDate()}" disabled="true"></td>
        <!--                                <td class="col-md-2" style="font-size: 90%"><input id="datepicker1" type="button" onchange="allagi('')" style="width:70%; background-color: lightgray; border: none"></td>-->
                                        <td class="col-md-2" style="font-size: 90%"><input class="selected" data-selected="${loop.index}" id="datepicker1${loop.index}" type="button" style="width:70%; background-color: lightgray; border: none"></td>
                                        <td class="col-md-2" style="font-size: 90%"><input type="text" id="showDiff${loop.index}" style="width:70%; background-color: transparent; border: none" disabled></td>
                                        <td class="col-md-1" style="font-size: 90%">$<input id="type${loop.index}" type="text" style="width:70%; background-color: transparent; border: none" value="${prices.get(count).getTotal()}" disabled="true"></td>
                                        <td class="col-md-1" style="font-size: 90%"><input type="text" id="showAmount${loop.index}" style="width:70%; background-color: transparent; border: none" value="undefined" disabled></td>
                                    </tr>

                                    <c:set var="count" value="${count+1}" scope="page"/>  
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>                               
                                    <td><button id="commitBTN" class="btn btn-success">Commit</button></td>                               
                                    <td></td>
                                    <td class="text-right">
                                        <p>
                                            <strong>Subtotal: </strong>
                                        </p>
                                        <p>
                                            <strong>Tax: </strong>
                                        </p>
                                    </td>
                                    <td class="text-center">
                                        <p>
                                            <strong id="subtotal">$0.00</strong>
                                        </p>
                                        <p>
                                            <strong id="tax">$0.00</strong>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><c:out value="${count}"/></td>
                                    <td><input id="countIndex" value="${count}" hidden>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Total:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong id="total">$0.00</strong></h4>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <button id="printPay" class="btn btn-success btn-lg btn-block">Print</button>
                        <button class="btn btn-success btn-lg btn-block" id="paymentBTN" disabled>
                            Pay Now <span class="glyphicon glyphicon-chevron-right"></span>
                        </button>                    
                    </div>
                </div>
            </div>
        </div>




        <script src="script/datepicker.js"></script> 
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    </body>

</html>