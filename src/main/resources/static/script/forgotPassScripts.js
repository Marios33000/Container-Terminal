//Fuction to show and hide password
function Toggle() {
    var temp = document.getElementById("pas");
    if (temp.type === "password") {
        temp.type = "text";
    } else {
        temp.type = "password";
    }
}
function Toggle() {
    var temp = document.getElementById("pas1");
    if (temp.type === "password") {
        temp.type = "text";
    } else {
        temp.type = "password";
    }
}


$(document).ready(function () {
    $('#fpass').on('click', () => {
        Swal.fire({
            title: "<i>Acount</i>",
            html: "Username: Perilee, Password: Cb9javaPT",
            confirmButtonText: "ok"
        }).then(function () {
            window.location.href = "team_project/loginPage.html";
        });
    });


    //Button Fuctions
    $("#submitBtn").mouseenter(function () {
        $("#submitBtn").css("background-color", "lightgray");
        $("#submitBtn").css("color", "black");
    });
    $("#submitBtn").mouseleave(function () {
        $("#submitBtn").css("background-color", "brown");
        $("#submitBtn").css("color", "white");
    });


    $('#submitBtn').on('click', () => {
        var password = $('#pas').val();
        var pasConfirm = $('#pas1').val();
        if ((pasConfirm == password) && ((pasConfirm != "") && (password != ""))) {
            Swal.fire({
                title: "<i>Account</i>",
                html: "Submit Successful!!",
                confirmButtonText: "ok"
            }).then(function () {
                window.location.href = "loginPage.html";
            });

        } else if ((pasConfirm == "") && (password == "")) {
            Swal.fire({
                title: "<i>Unseccussful</i>",
                html: "Please type your new password.",
                confirmButtonText: "ok",
            });
        } else {
            Swal.fire({
                title: "<i>Unseccussful</i>",
                html: "Password inputs are not equal.",
                confirmButtonText: "ok",
            });

        }
    })

});