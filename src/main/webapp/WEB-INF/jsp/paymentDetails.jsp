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
    <style>
        table {
    border-collapse: collapse       
}

td {
   border: 1px solid #000000
}
    </style>
    <body>
        <h1>Mplaa mpla !</h1>
        
        
        ${user.username}
   
        
        <div>  ${container.getOrdernumber().getBookingnumber()}   </div>
        <c:set var="count" value="0"  scope="page"/>  
     <c:forEach items="${containers}" var="container" >
       
         <div>  <b> ${container.getContainername()}  </b> </div>
                    
                   <div>   ${container.getType()} ==>  ${prices.get(count).getTotal()}$</div>
                 
                   <div>   ${container.getDate()}  </div>
                   <div>   ${container.getDate()}  </div>
                  
                   <br>
      
          <c:set var="count" value="${count+1}" scope="page"/>  
               </c:forEach>
    ${prices}
                   
                   <button>Paypal</button>
        
        
        
    </body>
</html>
