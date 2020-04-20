$(document).ready(function () {
                $("#datepicker").datepicker({format: 'dd-mm-yyyy'});
                $("input[type=button]").datepicker({format: 'yyyy-mm-dd', autoclose: true, startDate: new Date()});
            });
            function jsPrintAll() {
                setTimeout(function () {
                    window.print();
                }, 500);
            }
            function parseDate(input) {
                // Transform date from text to date
                var parts = input.match(/(\d+)/g);
                // new Date(year, month [, date [, hours[, minutes[, seconds[, ms]]]]])
                return new Date(parts[0], parts[1] - 1, parts[2]); // months are 0-based
            }
            function allagi(index) {
                var start = parseDate($("#datepicker" + index).val());
                console.log(start);
                var end = parseDate($("#datepicker1" + index).val());
                console.log(end);
                var days = (Math.ceil((end - start) / (1000 * 60 * 60 * 24))) - 1;
                console.log(days);
                if (days <= 0) {
                    $("#showDiff" + index).val(0 + " * 40$ = " + (0 * 40));
                } else {
                    $("#showDiff" + index).val(days + " * 40$ = " + (days * 40));
                }
            }