<%-- 
    Document   : registerForm
    Created on : Apr 22, 2020, 1:07:53 PM
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
        
        
        <form action="/registerForm" method="post">
            <label for="fname">Username:</label><br>
  <input type="text" id="fname" name="uname" ><br>
  <label for="lname">Password:</label><br>
  <input type="password" id="lname" name="pas" >
<label for="Afm">Afm:</label><br>
  <input type="text" id="Afm" name="afm" >
<label for="doy">Doy:</label><br>
  <input type="text" id="doy" name="doy">
<label for="Address">Address:</label><br>
  <input type="text" id="Address" name="address" >

  <input type="submit">
        
        
        </form>
    </body>
</html>
