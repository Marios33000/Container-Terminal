$(document).ready(function () {
    $("input[type=button]").datepicker({format: 'yyyy-mm-dd', autoclose: true, startDate: new Date()});
//    $(".selected").each((index) => {
//        $(this).on("change", () => {
//            console.log(index);
//            var start = parseDate($("#datepicker" + index).val());
//            var end = parseDate($("#datepicker1" + index).val());
//            console.log($("#datepicker1" + index).val());
//            var days = (Math.ceil((end - start) / (1000 * 60 * 60 * 24))) - 1;
//            var fee = days * 8;
//            if (days <= 0) {
//                $("#showDiff" + index).val("(0 days) $" + (0 * 8));
//            } else {
//                $("#showDiff" + index).val("(" + days + " days) $" + fee);
//            }
//            $("#showAmount" + index).val("$" + (fee + parseInt($("#type" + index).val())));
//        });
//    });
    $('#commitBTN').on('click', () => {
        var index = $("#countIndex").val();
        for (var i = 0; i < index; i++) {
            console.log($("#datepicker1" + index).val());
        }
        for (var i = 0; i < index; i++) {
            var checkValue = $("#datepicker1" + index).val();
            if (checkValue !== undefined) {
                swal({
                    title: "Caution",
                    text: "Are you sure?",
                    buttons: true,
                    icon: "warning"
                }).then((willCommit) => {
                    if (willCommit) {
                        swal("Committed Successfully!!", {
                            icon: "success"
                        }).then(function () {
                            var index = $("#countIndex").val();
                            for (var i = 0; i < index; i++) {
                                $("#datepicker1" + i).prop("disabled", true);
                            }
                            $("#commitBTN").prop("disabled", true);
                            $("#paymentBTN").prop("disabled", false);

                        });
                    } else {
                        swal("Retype your dates.")
                    }
                });
            } else {
                swal({
                    title: "Caution",
                    text: "Please complete all 'Paid Date' fields",
                    icon: "warning"
                });
            }
        }
    });
    $("#printPay").on("click", () => {
        setTimeout(function () {
            window.print();
        }, 500);
    });

    

//    function parseDate(input) {
//        var parts = input.split("-");
//        var date = new Date(parts[0], parts[1] - 1, parts[2]);
//        return date;
//    }


});

function parseDate(input) {
    var parts = input.split("-");
    var date = new Date(parts[0], parts[1] - 1, parts[2]);
    return date;
}

function allagi(index) {
    var start = parseDate($("#datepicker" + index).val());
    var end = parseDate($("#datepicker1" + index).val());    
    var days = (Math.ceil((end - start) / (1000 * 60 * 60 * 24))) - 1;
    var fee = days * 8;
    if (days <= 0) {
        $("#showDiff" + index).val("(0 days) $" + (0 * 8));
    } else {
        $("#showDiff" + index).val("(" + days + " days) $" + fee);
    }
    $("#showAmount" + index).val("$" + (fee + parseInt($("#type" + index).val())));
}