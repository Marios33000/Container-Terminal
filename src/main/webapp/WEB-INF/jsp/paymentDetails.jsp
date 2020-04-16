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
        
        
        
        
        
        
        
         <table border = "1">
         <tr>
             <th>Container Name</th>
            <th>Type</th>
              <th>Weight</th>
        
            <th>Date  Discharged</th>
            <th>Payment Date</th>
            <th>Amount</th>
            <th>Total</th>
          
         </tr>

         
         <tr>
             ${container}
         </tr>
         
      </table>
        
        <button>Paypal</button>
        
        
        
    </body>
</html>
