<!DOCTYPE html>
<html lang="en">

<head>
    <title>ResCarousel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong:300,400,400i,500,600,700" />
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />-->



<!-- Bootstrap CSS -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link href="../../assets/css/resCarousel.css" rel="stylesheet" type="text/css"/>
    <script src="../../assets/js/resCarousel.min.js" type="text/javascript"></script>
    <script src="../../assets/js/resCarousel.js" type="text/javascript"></script>
    <style>
        body {
            font-family: 'Trirong', serif;
            background: #eee;
        }

        .p0 {
            padding: 0;
        }

        .resCarousel-inner .item {
            /*border: 4px solid #eee;*/
            /*vertical-align: top;*/
            text-align: center;
        }

        .resCarousel-inner .item .tile div,
        .banner .item div {
            display: table;
            width: 100%;
            min-height: 250px;
            text-align: center;
            /*box-shadow: 0 1px 1px rgba(0, 0, 0, .1);*/
        }

        .resCarousel-inner .item h1 {
            display: table-cell;
            vertical-align: middle;
            color: white;
        }

        .banner .item div {
            background: url('assets/img/demoImg.jpg') center top no-repeat;
            background-size: cover;
            min-height: 550px;
        }

        .item .tile div {
            background: url('assets/img/demoImg.jpg') center center no-repeat;
            background-size: cover;
            height: 200px;
            color: white;
        }

        .item div h1 {
            background: rgba(0, 0, 0, .4);
        }
    </style>
</head>

<body>

<%--
    <!--home-->
    <div class="container p0">

        <div class="table-responsive">
            <table class="table table-hover table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Attributes</th>
                        <th>Type</th>
                        <th>Default</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>data-items</td>
                        <td>xs-sm-md-lg</td>
                        <td>1-1-1-1</td>
                        <td>The <strong>data-items</strong> must be declare. Based on this <strong>data-slide</strong> and other Attributes works</td>
                    </tr>
                    <tr>
                        <td>data-slide</td>
                        <td>number</td>
                        <td>1</td>
                        <td>The <strong>data-slide</strong> is not declare then it will get the current viewport items from data-items and make it as default.</td>
                    </tr>
                    <tr>
                        <td>data-speed</td>
                        <td>milli seconds</td>
                        <td>400</td>
                        <td>The <strong>data-speed</strong> is used to control the speed of the sliding items.</td>
                    </tr>
                    <tr>
                        <td>data-interval</td>
                        <td>milli seconds</td>
                        <td>false</td>
                        <td>The <strong>data-interval</strong> is used for auto sliding of items based on mentioned mentioned data-interval value.</td>
                    </tr>
                    <tr>
                        <td>data-animator</td>
                        <td>string</td>
                        <td>none</td>
                        <td>The <strong>data-animator</strong> is used for animating the sliding items. list of animmation name below:
                            <ul>
                                <li>lazy</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>data-load</td>
                        <td>number</td>
                        <td>false</td>
                        <td>The <strong>data-load</strong> is used to intimate that the slider is going to touch the end( data-load value ) so that the developer can load( append ) another set of items. To use this feature you need to mention three things.
                            <ul>
                                <li>mention the data-load with value</li>
                                <li>mention any id in resCarousel-inner</li>
                                <li>the little js script to get trigger <code>$(your id).on('ResCarouselLoad', function() { ...load items... }</code></li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>
--%>

    <div class="container-fluid p0">
        <div class="resCarousel" data-items="1-1-1-1" data-slide="1" data-speed="700" data-interval="4000">
            <div class="resCarousel-inner banner">

                <div class="item">
                    <div>
                        <h1>1</h1>
                    </div>
                </div>

                <div class="item">
                    <div>
                        <h1>2</h1>
                    </div>
                </div>

                <div class="item">
                    <div>
                        <h1>3</h1>
                    </div>
                </div>

                <div class="item">
                    <div>
                        <h1>4</h1>
                    </div>
                </div>

                <div class="item">
                    <div>
                        <h1>5</h1>
                    </div>
                </div>

            </div>
            <ul class="resPoint">
                <li></li>
            </ul>
            <button class='btn btn-default leftRs'><</button>
            <button class='btn btn-default rightRs'>></button>
        </div>
    </div>

    <!--home-->
    <div class="container">
        <h4>data-items="2-2-2-2" data-slide="2" data-interval="2000" data-speed="600" data-animator="lazy"</h4>
        <div class="resCarousel" data-items="2-2-2-2" data-slide="2" data-interval="2000" data-speed="600" data-animator="lazy">
            <div class="resCarousel-inner">

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>1</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>2</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>3</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>4</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>5</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>6</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>7</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>8</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>9</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>10</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>11</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>12</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>13</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>14</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

            </div>
            <button class='btn btn-default leftRs'><</button>
            <button class='btn btn-default rightRs'>></button>
        </div>
    </div>

    <!--home-->
    <div class="container p8">
        <h4> data-items="2-3-3-3" data-slide="3" data-speed="900" data-animator="lazy"</h4>
        <div class="resCarousel" data-items="2-3-3-3" data-slide="3" data-speed="900" data-animator="lazy">
            <div class="resCarousel-inner">

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>1</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>2</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>3</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>4</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>5</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>6</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>7</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>8</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>9</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>10</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>11</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>12</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>13</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>14</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

            </div>
            <button class='btn btn-default leftRs'><</button>
            <button class='btn btn-default rightRs'>></button>
        </div>
    </div>

    <!--home-->
    <div class="container p8">
        <h4>data-items="2-4-4-4" data-interval="2000" data-slide="1" data-animator="lazy"</h4>
        <div class="resCarousel" data-items="2-4-4-4" data-interval="2000" data-slide="1" data-animator="lazy">
            <div class="resCarousel-inner">

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>1</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>2</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>3</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>4</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>5</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>6</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>7</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>8</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>9</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>10</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>11</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>12</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>13</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>14</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

            </div>
            <button class='btn btn-default leftRs'><</button>
            <button class='btn btn-default rightRs'>></button>
        </div>
    </div>

    <!--home-->
    <div class="container p8">
        <h4>data-items="2-3-4-5" data-slide="5" data-speed="900" data-interval="4000" data-load="3" data-animator="lazy"</h4>
        <div class="resCarousel" data-items="2-3-4-5" data-slide="5" data-speed="900" data-interval="4000" data-load="3" data-animator="lazy">
            <div class="resCarousel-inner" id="eventLoad">

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>1</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>2</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>3</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>4</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>5</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>6</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>7</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>8</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>9</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>10</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>11</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>12</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>13</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

                <div class="item">
                    <div class="tile">
                        <div>
                            <h1>14</h1>
                        </div>
                        <h3>Title</h3>
                        <p>content</p>
                    </div>
                </div>

            </div>
            <button class='btn btn-default leftRs'><</button>
            <button class='btn btn-default rightRs'>></button>
        </div>
    </div>

    <hr>
    <!--
    <div class="form-inline container">
        <div class="form-group">
            <label for="dItems">data-items:</label>
            <input type="text" class="form-control" id="dItems" value="1,2,3,4">
        </div>
        <div class="form-group">
            <label for="dSlide">data-slide:</label>
            <input type="text" class="form-control" id="dSlide" value="1">
        </div>
        <div class="form-group">
            <label for="dSpeed">data-speed:</label>
            <input type="text" class="form-control" id="dSpeed" value="600">
        </div>
        <div class="form-group">
            <label for="dInterval">data-interval:</label>
            <input type="text" class="form-control" id="dInterval" value="5000">
        </div>
        <button onclick="ResCarouselCustom()" class="btn btn-default">Submit</button>
    </div>



    <div class="container p8">
        <div class="col-xs-12 col-sm-12 col-lg-12 shad p0">
            <div class="col-xs-12 col-sm-12 col-lg-12 EiProdH" id="customRes">
                <h4></h4>
            </div>

        </div>
    </div>-->

    <script>
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
    </script>
</body>

</html>