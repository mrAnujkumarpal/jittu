/* This is a mobile view sidebar navigation JS function */
//JavaScript code should be executed in "strict mode"

 //ResCarouselCustom();
        var pageRefresh = true;

        function ResCarouselCustom() {
            var items = $("#dItems").val(),
                slide = $("#dSlide").val(),
                speed = $("#dSpeed").val(),
                interval = $("#dInterval").val()

            var itemsD = "data-items=\"" + items + "\"",
                slideD = "data-slide=\"" + slide + "\"",
                speedD = "data-speed=\"" + speed + "\"",
                intervalD = "data-interval=\"" + interval + "\"";


            var atts = "";
            atts += items != "" ? itemsD + " " : "";
            atts += slide != "" ? slideD + " " : "";
            atts += speed != "" ? speedD + " " : "";
            atts += interval != "" ? intervalD + " " : ""

            //console.log(atts);

            var dat = "";
            dat += '<h4 >' + atts + '</h4>'
            dat += '<div class=\"resCarousel\" ' + atts + '>'
            dat += '<div class="resCarousel-inner">'
            for (var i = 1; i <= 14; i++) {
                dat += '<div class=\"item\"><div><h1>' + i + '</h1></div></div>'
            }
            dat += '</div>'
            dat += '<button class=\'btn btn-default leftRs\'><i class=\"fa fa-fw fa-angle-left\"></i></button>'
            dat += '<button class=\'btn btn-default rightRs\'><i class=\"fa fa-fw fa-angle-right\"></i></button>    </div>'
            console.log(dat);
            $("#customRes").html(null).append(dat);

            if (!pageRefresh) {
                ResCarouselSize();
            } else {
                pageRefresh = false;
            }
            //ResCarouselSlide();
        }

        $("#eventLoad").on('ResCarouselLoad', function() {
            //console.log("triggered");
            var dat = "";
            var lenghtI = $(this).find(".item").length;
            if (lenghtI <= 30) {
                for (var i = lenghtI; i <= lenghtI + 10; i++) {
                    dat += '<div class="item"><div class="tile"><div><h1>' + (i + 1) + '</h1></div><h3>Title</h3><p>content</p></div></div>'
                }
                $(this).append(dat);
            }
        });