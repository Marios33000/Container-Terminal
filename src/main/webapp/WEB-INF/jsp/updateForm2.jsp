
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>



        <form action="/updatedForm" method="post">



            <input type="hidden" id="fname" name="uid" value="${sea.getId()}" ><br>


            <label for="fname">Booking number:</label><br>
            <input type="text" id="fname" name="bn" value="${sea.getBookingnumber()}"><br>
            <label for="lname">Custom</label><br>
            <input type="text" id="lname" name="custom" value="1">
            <label for="Afm">Paid</label><br>
            <input type="text" id="Afm" name="paid" value="${sea.getPaid()}">
            
            <input type="text" id="doy" name="userid" value="${sea.getUserid().getUserid()}" hidden>

            <input type="submit">

        </form>



    </body>
</html>