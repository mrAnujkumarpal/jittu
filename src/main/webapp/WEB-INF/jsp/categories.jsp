

<!doctype html>
<html lang="en">
    <head><title>Sub Categories</title></head>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <link href="../../assets/css/mainSite.css" rel="stylesheet" type="text/css"/>
            <link href="../../assets/css/resCarousel.css" rel="stylesheet" type="text/css"/>
            <script src="../../assets/js/resCarousel.min.js" type="text/javascript"></script>
            <script src="../../assets/js/resCarousel.js" type="text/javascript"></script>
    <body>

        <%@include file="/WEB-INF/jsp/common/header.jsp"%>
        <div class="container-fluid p0">
                <div class="resCarousel" data-items="1-1-1-1" data-slide="1" data-speed="700" data-interval="4000">
                    <div class="resCarousel-inner banner">
                        <c:forEach var="caroList" items="${carouselList}">
                             <div class="item" style="background: url('data:image/jpeg;base64,${caroList.base64}'); center top no-repeat;">
                            <div>
                                  <h1>  ${caroList.carousel_quotes} !!*!! ${caroList.mainCategory.cate_name}
                                  <br/>
                                   ${caroList.carousel_heading}</h1>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                    <button class='btn btn-default leftRs'><</button>
                    <button class='btn btn-default rightRs'>></button>
                </div>
            </div>

        <div class="container-fluid" style=" margin-top:10px;">


            <ul class="nav nav-tabs">
                <c:forEach var="category" items="${subCategoryList}">
                    <li class="nav-item">
                        <a class="nav-link" href="/products/${category.subcate_id}">${category.subCate_name}</a>
                    </li>
                </c:forEach>
            </ul>
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                    <div class="row">

                        <c:forEach var="prod" items="${productList}">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="serviceProdWise">
                                    <div class="product">
                                        <span> ${prod.prod_name}</span>
                                        <span class="pull-right"> ${prod.charge}</span>
                                    </div>
                                    <div class="productDesc">
                                        <div class="commitDesc"> ${prod.prod_description}</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                    <div class="pull-right">
                        cart
                    </div>
                </div>
            </div>



            <div class="row"  style=" background-color:#f1f3f6; margin-top: 100px;">
                <div class="col-xs-12 col-md-12 col-sm-12">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 commitmentDecription">
                            <div class="">
                                <i class="fa fa-clock-o fa-2x" aria-hidden="true"></i>
                                <span class="oueCommitment">Fast & On Time Service</span>
                                <div class="commitDesc"> We provide only verified, background checked and high quality professionals</div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 commitmentDecription">
                            <div class=" ">
                                <i class="fa fa-inr fa-2x" aria-hidden="true"></i>
                                <span class="oueCommitment">Best &amp; Transparent Prices</span>
                                <div class="commitDesc"> We match you with the right professionals with the right budget</div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 commitmentDecription">
                            <div class=" ">
                                <i class="fa fa-male fa-2x" aria-hidden="true"></i>

                                <span class="oueCommitment">Skilled &amp; Trained Professionals</span>
                                <div class="commitDesc"> Super convenient, guaranteed service from booking to delivery</div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 commitmentDecription">
                            <div class=" ">
                                <i class="fa fa-snowflake-o fa-2x" aria-hidden="true"></i>
                                <span class="oueCommitment">Assured Service Quality</span>
                                <div class="commitDesc"> Super convenient, guaranteed service from booking to delivery</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
    </body>
</html>