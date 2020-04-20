//Fuction to show and hide password
function Toggle() {
    var temp = document.getElementById("pas");
    if (temp.type === "password") {
        temp.type = "text";
    } else {
        temp.type = "password";
    }
}

    //Button Fuctions
    $("#submitBtn").mouseenter(function () {
        $("#submitBtn").css("background-color", "lightgray");
        $("#submitBtn").css("color", "black");
    });
    $("#submitBtn").mouseleave(function () {
        $("#submitBtn").css("background-color", "brown");
        $("#submitBtn").css("color", "white");
    });

   

