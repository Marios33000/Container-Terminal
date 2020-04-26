<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"
        type="text/javascript"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css"
              rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h1>Hello World!</h1>



        <form action="/updatedCon" method="post">
            <input type="hidden" name="uid" value="${con.getContainerid()}">
            <input type="hidden" name="bn" value="${con.getContainername()}">
            <input type="hidden" name="type" value="${con.getType()}">            
            <input type="hidden" name="dis" value="1">
            <input type="hidden" name="billId" value="${con.getOrdernumber().getId()}">
            
            <label for="cName">Container name:</label>
            <div id="cName">${con.getContainername()}</div><br>
            <label for="cType">Container Type</label>
            <div id="cType">${con.getType()}</div><br>         
            <label for="datepicker">Discharged</label><br/>
            <input id="datepicker" type="text" name="disDate" style="width: 10%;background-color: lightgray; border: none"> <br/> 
            <label for="cbill">Booking Number:</label><br/>
            <div id="cbill">${con.getOrdernumber().getBookingnumber()}</div>
            <br/>
            <br/>
            <input type="submit">

        </form>

        <script>
            $(document).ready(function () {
                $("#datepicker").datepicker({format: 'yyyy-mm-dd', autoclose: true, endDate: new Date()});
            });
        </script>

    </body>
</html>