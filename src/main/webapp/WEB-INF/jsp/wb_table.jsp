<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
   <script>$(document).ready( function () {
        $('#table_id').DataTable();
    } );</script>
    <title>Waybill history</title>
    
</head>
<body>
    <br>
    <h1 style="text-align:center">Waybills</h1>
    <br>
    <br>
    <table id="table_id" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">  
        <!-- class:display -->
        <thead>
            <tr>
               
                <th>Booking Number</th>
                <th>Custom</th>
                <th>Paid</th>
                <th>Container Numbers</th>
         
            </tr>
        </thead>
        <tbody>
         <c:forEach items="${kappa}" var="container">
                    <tr>
                          
                        <td>${ container.getBookingnumber()}</td>
                          <td>${ container.getCustom()}</td>
                          <td>${ container.getPaid()}</td>
                          <td>${ container.getContainerCollection().size()}</td>
                    </tr>
    </c:forEach>

        </tbody>
    </table>
<!-- <script>
$(".btn btn-primary").click(function() {
    var specificRow = $(this).closest("tr"),
        data = specificRow.find("td:nth-child(1)");

    $.each(data, function() {
        console.log($(this).text());
    });
    
});

</script> -->
<br>

<br>
<div class="text-center">
    <h3>Container Info</h3>
    <br>
    <nav class="navbar navbar-light bg-light">
    <form class="form-inline" method="post" action="/search">
        <input class="form-control form-control-lg" type="search" name="search" placeholder="Booking Number" aria-label="Search">
      <button class="btn btn-primary" type="submit" >Search</button>
    </form>
  </nav>
</div>
</body>



<!--
     <form method="post" action="/search">
               <label for="search">Search :</label><br>
               <input type="text"  name="search"><br>

            <input type="submit"> 
        </form>-->
        




</html>