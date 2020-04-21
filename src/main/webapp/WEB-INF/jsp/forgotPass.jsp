<%-- 
    Document   : forgotPass
    Created on : Apr 14, 2020, 8:44:14 PM
    Author     : perry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/forgotPassCss.css">
    <title>Forgot password</title>

</head>

<body>

    <div class="outerClass">
        <div class="container innerClass shadow p-3 mb-5  ">
            <h4 style="color: white;">Reset Password</h4>
            <hr style="background-color: brown; height: 5px;" />            
            <div class="row inp">
                <label for="pas"><b style="color: white;">New Password</b> </label>
                <input id="pas" class="form-control" type="password" placeholder="type your new password" />
                <div class="row inp"> <label for="" style="color: white;"><input type="checkbox" onclick="Toggle()" required>
                        Show Password</label> </div>                        
            </div>
            <div class="row inp" style="margin-top: -6%;">
                <label for="pas"><b style="color: white;">Confirm Password</b> </label>
                <input id="pas1" class="form-control" type="password" placeholder="confirm your new password" />
                <div class="row inp"> <label for="" style="color: white;"><input type="checkbox" onclick="Toggle()" required>
                        Show Password</label> </div>
            </div>

            <div class="row inp">
                <div class="col-md-4"></div>
                <div class="col-md-4"><button id="submitBtn" class="btn btn-success"
                        style="background-color: brown; border-color:yellow;">Submit</button>
                </div>
                <div class="col-md-4"></div>
            </div>            
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script src="scripts/forgotPassScripts.js"></script>

</body>

</html>
