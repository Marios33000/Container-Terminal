
$(document).ready(function () {

    $(function () {
        $("#datepicker").datepicker({ format: 'dd-mm-yyyy' });
        $("#datepicker").datepicker("setDate", "${container.getDate()}");//date of discharged
        $("#datepicker1").datepicker({ format: 'dd-mm-yyyy', autoclose: true, startDate: new Date() }).on("change", function () {
            var start = $('#datepicker').datepicker('getDate');
            var end = $('#datepicker1').datepicker('getDate');
            var days = (Math.ceil((end - start) / (1000 * 60 * 60 * 24)))-1;
            if (days <= 0) {
                $("#dateDiff").val(0 + " * 40$ = " + (0 * 40));
            }
            else {
                $("#dateDiff").val(days + " * 40$ = " + (days * 40));
            }
        });
    });
});