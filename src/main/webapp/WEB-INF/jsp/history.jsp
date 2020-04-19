<%-- 
    Document   : history
    Created on : Apr 17, 2020, 4:27:03 PM
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
    <body>
        <h1>Hello World!</h1>

        
       <table style="width:100%" border="1">
  <tr>
     <th>Booking number</th> 
    <th>Custom</th>
    <th>Paid</th>
    <th>Container Numbers</th>
  </tr>
 
     <c:forEach items="${kappa}" var="container">
                    <tr>
                          <td>${ container.getBookingnumber()}</td>
                          <td>${ container.getCustom()}</td>
                          <td>${ container.getPaid()}</td>
                          <td>${ container.getContainerCollection().size()}</td>
                    </tr>
    </c:forEach>

 
 </table> 
    </body>
</html>