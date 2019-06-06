

<!doctype html>
<html lang="en">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link href="../../assets/css/resCarousel.css" rel="stylesheet" type="text/css"/>
        <script src="../../assets/js/resCarousel.min.js" type="text/javascript"></script>
        <script src="../../assets/js/resCarousel.js" type="text/javascript"></script>
<link href="assets/css/mainSite.css" rel="stylesheet" type="text/css"/>


    <head><title>Call us for home service !</title></head>
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

        <!-- Page Content -->

        <div class="container-fluid"> 
            <h2 class="text-center">Our Speciality </h2>
            <p class="text-muted mb-5 text-center">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</p>


            <div class="row">
                <!-- Team Member 1 -->
                <c:forEach var="category" items="${allMainCategory}">

                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6">
                        <div class="ourSpacility">
                            <a href="/service/${category.cate_id}">
                                <div class="card border-0 shadow">
                                    <img src="data:image/jpeg;base64,${category.base64}" class="card-img-top" alt=".." style="width: 73px!important;    height: 73px!important;    margin: 0 auto;">
                                    <div class="card-body text-center">
                                        <h5 class="card-title mb-0">${category.cate_name}</h5>
                                        <div class="card-text text-black-50">${category.image_name} </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                </c:forEach>
            </div>
        </div>



        <section class="main">
            <div class="container-fluid">
                <h3 class="text-center mb-4 p-4 text-secondary">What Customers Are Saying About Our service</h3>




                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="card pmd-card">
                            <div class="card-header d-flex flex-row pmd-card-border">
                                <a class="pmd-avatar-list-img" href="javascript:void(0);">
                                    <img src="https://source.unsplash.com/9UVmlIb0wJU/500x350"class="rounded-circle" width="50" height="50" style="margin-right: 15px;">
                                </a>
                                <div class="media-body">
                                    <h4 class="card-title">Two-line item</h4>
                                    <p class="card-subtitle">Secondary text</p>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="commitDesc"> Cards provide context and an entry point to more robust information and views. Don't overload cards with extraneous information or actions.</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="card pmd-card">
                            <div class="card-header d-flex flex-row pmd-card-border">
                                <a class="pmd-avatar-list-img" href="javascript:void(0);">
                                    <img src="https://pro.propeller.in/assets/images/Keith-Dowd.png"class="rounded-circle" width="50" height="50" style="margin-right: 15px;">
                                </a>
                                <div class="media-body">
                                    <h4 class="card-title">Two-line item</h4>
                                    <p class="card-subtitle">Secondary text</p>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="commitDesc"> Cards provide context and an entry point to more robust information and views. Don't overload cards with extraneous information or actions.</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="card pmd-card">
                            <div class="card-header d-flex flex-row pmd-card-border">
                                <a class="pmd-avatar-list-img" href="javascript:void(0);">
                                    <img src="https://source.unsplash.com/ZI6p3i9SbVU/500x350"class="rounded-circle" width="50" height="50" style="margin-right: 15px;">
                                </a>
                                <div class="media-body">
                                    <h4 class="card-title">Two-line item</h4>
                                    <p class="card-subtitle">Secondary text</p>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="commitDesc"> Cards provide context and an entry point to more robust information and views. Don't overload cards with extraneous information or actions.</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="card pmd-card">
                            <div class="card-header d-flex flex-row pmd-card-border">
                                <a class="pmd-avatar-list-img" href="javascript:void(0);">
                                    <img src="https://source.unsplash.com/TMgQMXoglsM/500x350"class="rounded-circle" width="50" height="50" style="margin-right: 15px;">
                                </a>
                                <div class="media-body">
                                    <h4 class="card-title">Two-line item</h4>
                                    <p class="card-subtitle">Secondary text</p>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="commitDesc"> Cards provide context and an entry point to more robust information and views. Don't overload cards with extraneous information or actions.</div>
                            </div>
                        </div>
                    </div>

                </div>




            </div>

        </section>

        <!-- Header -->
        <div class="container-fluid">
            <div class="row"  style=" background-color:#f1f3f6;">
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

        <header class="text-center py-5 mb-4 connectWithUs" >
            <div class="container">
                <h1 class="font-weight-light text-white">Meet the Team</h1>
            </div>
        </header>

        <!-- Page Content -->
        <div class="container">
            <div class="row">
                <!-- Team Member 1 -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-0 shadow">
                        <img src="https://source.unsplash.com/TMgQMXoglsM/500x350" class="card-img-top" alt="...">
                        <div class="card-body text-center">
                            <h5 class="card-title mb-0">Team Member</h5>
                            <div class="card-text text-black-50">Web Developer</div>
                        </div>
                    </div>
                </div>
                <!-- Team Member 2 -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-0 shadow">
                        <img src="https://source.unsplash.com/9UVmlIb0wJU/500x350" class="card-img-top" alt="...">
                        <div class="card-body text-center">
                            <h5 class="card-title mb-0">Team Member</h5>
                            <div class="card-text text-black-50">Web Developer</div>
                        </div>
                    </div>
                </div>
                <!-- Team Member 3 -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-0 shadow">
                        <img src="https://source.unsplash.com/sNut2MqSmds/500x350" class="card-img-top" alt="...">
                        <div class="card-body text-center">
                            <h5 class="card-title mb-0">Team Member</h5>
                            <div class="card-text text-black-50">Web Developer</div>
                        </div>
                    </div>
                </div>
                <!-- Team Member 4 -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-0 shadow">
                        <img src="https://source.unsplash.com/ZI6p3i9SbVU/500x350" class="card-img-top" alt="...">
                        <div class="card-body text-center">
                            <h5 class="card-title mb-0">Team Member</h5>
                            <div class="card-text text-black-50">Web Developer</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

        </div>

        <div class="container-fluid">
            <!-- Intro with Block Image on Left-->
            <div class="banner-wrap bg-white">
                <div class="container">
                    <div class="pmd-intro-container d-flex row justify-content-between">
                        <div class="pmd-intro-img align-self-center col-md-5 col-12">
                            <img src="https://pro.propeller.in/assets/images/side-image.png" clas="">
                        </div>
                        <div class="align-self-center col-lg-6 col-md-7 col-12">
                            <h3>Download the App to get More Discount</h3>
                            <hr>
                            <p class="lead">
                                Choose and book from 100+ services and track them on the go with the Our Andrioad App.
                            </p>
                            <a href="javascript:void(0);" class="btn btn-primary pmd-ripple-effect pmd-btn-raised">Download App</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
    </body>
</html>