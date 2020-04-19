
$(document).ready(function () {
    var inputShow = document.querySelector("#family");
    var checkDate = document.querySelector("#checkDate");
    var checkDate1 = document.querySelector("#checkDate1");
    var dateStart = "";
    var dateEnd = "";
    console.log(inputShow.value);



    $('#datepicker').datepicker({
        autoclose: true,
        clearBtn: true,
        format: "dd/mm/yyyy",
        onSelect: function (datetext) {
            $(this).change();
        }
    }).on("change", function () {
        dateStart = this.value;
        checkDate.innerHTML = "Check-in:<br>" + this.value;
        this.value = "";
        console.log("dateStart = " + dateStart);
    });

    $('#datepicker1').datepicker({
        autoclose: true,
        clearBtn: true,
        format: "dd/mm/yyyy",
        onSelect: function (datetext) {
            $(this).change();
        }
    }).on("change", function () {
        dateEnd = this.value;
        checkDate1.innerHTML = "Check-out:<br>" + this.value;
        this.value = "";
        console.log("dateEnd = " + dateEnd);
        console.log("dateStart = " + dateStart);
    });

    function dateDiff(dateStart, dateEnd) {
        return (dateStart - dateEnd);
    }
});