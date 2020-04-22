$(document).ready(function () {
    $("#datepicker").datepicker({format: 'dd-mm-yyyy'});
    $("input[type=button]").datepicker({format: 'yyyy-mm-dd', autoclose: true, startDate: new Date()});
    $('#commitBTN').on('click', () => {
        swal({
            title: "<i>Caution</i>",
            text: "Are you sure?",
            buttons: true,
            icon: "warning"
        }).then((willCommit) => {
            if (willCommit) {
                swal("Committed Successfully!!", {
                    icon: "success"
                }).then(function () {
                    var index = $("#countIndex").val();
                    for (var i = 0; i <= index; i++) {
                        $("#datepicker1" + i).prop("disabled", true);
                    }
                    $("#commitBTN").prop("disabled", true);
                });
            } else {
                swal("Retype your dates.")
            }
        });
    });
    $("#printPay").on("click",() =>{
        setTimeout(function () {
        window.print();
    }, 500);
    });
});

function parseDate(input) {
    var parts = input.split("-");
    var date = new Date(parts[0], parts[1] - 1, parts[2]);
    return date;
}

function allagi(index) {
    console.log($("#datepicker" + index).val());
    var start = parseDate($("#datepicker" + index).val());
    console.log(start);
    console.log($("#datepicker1" + index).val());
    var end = parseDate($("#datepicker1" + index).val());
    console.log(end);
    var days = (Math.ceil((end - start) / (1000 * 60 * 60 * 24))) - 1;
    var fee = days * 8;
    console.log(days);
    if (days <= 0) {
        $("#showDiff" + index).val("(0 days) $" + (0 * 8));
    } else {
        $("#showDiff" + index).val("(" + days + " days) $" + fee);
    }
    $("#showAmount" + index).val("$" + (fee + parseInt($("#type" + index).val())));
}

function subtotal(index) {
//na upologiso to subtotal
}

//function commitHandle(index) {
//    for (var i = 0; i <= index; i++) {
//        $("#datepicker1" + i).prop("disabled", true);
//    }
////na valo edo to sweetalert
//
//
//}