<%-- 
    Document   : updateForm
    Created on : Apr 22, 2020, 7:18:15 PM
    Author     : mario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
          
        <form action="/update" method="post">
            
 
          
            <input type="hidden" id="fname" name="uid" value="${sea.getId()}" ><br>
            
            
            <label for="fname">Booking number:</label><br>
            <input type="text" id="fname" name="bn" value="${sea.getBookingnumber()}" placeholder="${sea.getBookingnumber()}"><br>
  <label for="lname">Custom</label><br>
  <input type="text" id="lname" name="custom" placeholder="${sea.getCustom()}">
<label for="Afm">Paid</label><br>
<input type="text" id="Afm" name="paid" placeholder="${sea.getPaid()}" value="${sea.getPaid()}">
<label for="doy">User id:</label><br>
  <input type="text" id="doy" name="userid" placeholder="${sea.getUserid().getUserid()}" value="${sea.getUserid().getUserid()}">

  <input type="submit">
        
        
        
        
        
    </body>
</html>
