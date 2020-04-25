<%-- 
    Document   : loginPage
    Created on : Apr 14, 2020, 7:17:47 PM
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
    <link rel="stylesheet" href="css/loginPageCss.css">
    <title>Welcome</title>

</head>

<body>
    <form method="post" action="/submitlogin">
    <div class="outerClass">
        <div class="container innerClass shadow p-3 mb-5  ">
            <h4 style="color: white;">Login Page</h4>
            <hr style="background-color: brown; height: 5px;" />
            <div class="row inp">
                <label for="fname"><b style="color: white;">Username</b> </label>
                <input class="form-control" id="uName" name="fname" type="text" placeholder="type username" />
            </div>
            <div class="row inp">
                <label for="pas"><b style="color: white;">Password</b> </label>
                <input id="pas" class="form-control" type="password" name="pas" placeholder="type your password" />
                <div class="row inp"> <label for="" style="color: white;"><input type="checkbox" onclick="Toggle()">
                        Show Password</label> </div>
            </div>

            <div class="row inp">
                <div class="col-md-4"></div>
                <div class="col-md-4"><button id="submitBtn" class="btn btn-success"
                        style="background-color: brown; border-color:yellow;">Login</button>
                </div>
                <div class="col-md-4"></div>

            </div>
            <div class="row" style="margin-left: 34%; margin-top: 5%;">
                <button type="button" class="btn btn-link" id="fpass" style="color: white;">Forgot password?</button>
                <a href="goToRegister" style="color: white;">Register</a>

            </div>
        </div>
    </div>
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!--    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>-->
    <script src="/script/loginScripts.js"></script>

</body>

</html>
