<%-- 
    Document   : datepicker
    Created on : Apr 19, 2020, 5:31:56 PM
    Author     : perry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"
        type="text/javascript"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css"
        rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
        integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/datepicker.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/css/bootstrap-slider.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/bootstrap-slider.min.js"></script>
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    </head>
    <body>
        
        <div class="row" style="padding-top: 1%;">
            <div class="col-sm-4"><input id="datepicker" type="button" class="form-control form-control text-center">
                <i class="fas fa-calendar"></i><span class="angles"><i class="fas fa-angle-left fa-2x"></i><i
                        class="fas fa-angle-right fa-2x" style="padding-left: 12px;"></i></span>
                <div id="checkDate" style="font-size: 10px;">Check-in:<br>20-04-2020</div>
            </div>
            <div class="col-sm-4"><input id="datepicker1" type="button" class="form-control form-control text-center">
                <i class="fas fa-calendar"></i><span class="angles"><i class="fas fa-angle-left fa-2x"></i><i
                        class="fas fa-angle-right fa-2x" style="padding-left: 12px;"></i></span>
                <div id="checkDate1" style="margin-left: 12%; font-size: 10px;">Check-out:<br>20-04-2020</div>
            </div>
            <div class="col-sm-4" id="searchBar1">
                <input type="text" id="family" class="form-control form-control" value="">                
            </div>
            </div>
            
            <script src="/script/datepicker.js"></script>
            
    </body>
</html>
