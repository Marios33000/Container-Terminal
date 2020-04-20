<%-- 
    Document   : paymentDetails
    Created on : Apr 16, 2020, 2:42:10 PM
    Author     : mario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        <title>JSP Page</title>
    </head>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"
    type="text/javascript"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css"
          rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
          integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link rel="stylesheet" href="css/datepicker.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/css/bootstrap-slider.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/bootstrap-slider.min.js"></script>
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <body>
        <h1>Invoice !</h1>

        <div><b>${user.username}</b></div>
        <div>${user.address}</div>
        <div>${user.afm}</div>
        <div>${user.doy}</div>


        <br><br>
        <c:set var="count" value="0"  scope="page"/>  
        <c:forEach items="${containers}" var="container" >
            <div>${container.getOrdernumber().getBookingnumber()}</div>
            <div>  <b> ${container.getContainername()}  </b> </div>

            <div>   ${container.getType()} ==>  ${prices.get(count).getTotal()}$</div>

            <div class="row" style="padding-top: 1%;">
                <div class="col-sm-2"><input id="datepicker" type="date" format="dd-mm-yyyy" class="form-control form-control text-center" value="${container.getDate()}" disabled="true">
                    <i class="fas fa-calendar"></i>           
                </div>
                <div class="col-sm-2"><input id="datepicker1" type="button" class="form-control form-control text-center">
                    <i class="fas fa-calendar"></i>           
                </div>
                <div class="col-sm-2">
<!--                    <input type="text" id="${count}" disabled>-->
                    <input type="text" id="showDiff" disabled>
                </div>
            </div>


            <br>

            <c:set var="count" value="${count+1}" scope="page"/>  
        </c:forEach>
        ${prices}      
        <button>Paypal</button>
        <div class="col-md-4"><input type="button" id="btnPrint" onclick="jsPrintAll()" value="Print" /></div>

        <!--       
        
        <!--        <script src="script/datepicker.js"></script>-->
        <script>
            function jsPrintAll() {
                setTimeout(function () {
                    window.print();
                }, 500);
            }
            $(document).ready(function () {

                $(function () {
                    $("#datepicker").datepicker({format: 'dd-mm-yyyy'});
//                    $("#datepicker").datepicker("setDate", 'this.value');//date of discharged
                    $("input[type=button]").datepicker({format: 'dd-mm-yyyy', autoclose: true, startDate: new Date()}).on("change", function () {
                        var start = $('#datepicker').datepicker('getDate');
                        var end = $('#datepicker1').datepicker('getDate');
                        var days = (Math.ceil((end - start) / (1000 * 60 * 60 * 24))) - 1;
                        if (days <= 0) {
                            $("#showDiff").val(0 + " * 40$ = " + (0 * 40));
                        } else {
                            $("#showDiff").val(days + " * 40$ = " + (days * 40));
                        }
                    });
                });
            });
        </script>
    </body>
</html>
