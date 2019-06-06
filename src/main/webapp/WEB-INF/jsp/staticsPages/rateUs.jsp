

<!doctype html>
<html lang="en">
    <head><title>Rate us according to our services</title></head>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="assets/css/mainSite.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/resCarousel.css" rel="stylesheet" type="text/css"/>
    <script src="assets/js/resCarousel.min.js" type="text/javascript"></script>
    <script src="assets/js/resCarousel.js" type="text/javascript"></script>
    <body>

        <%@include file="/WEB-INF/jsp/common/header.jsp"%>
        <div class="container-fluid" style="margin-top: 100px;">
            <div class="row">
                <div class="col-md-7 col-sm-7">
                    <div class="row">

                        <c:forEach var="customerReview" items="${customerReview}">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">                           
                                <div class="card pmd-card">
                                    <div class="card-header d-flex flex-row pmd-card-border">
                                        <a class="pmd-avatar-list-img" href="javascript:void(0);">
                                            <img src="data:image/jpeg;base64,${customerReview.base64}"class="rounded-circle" width="50" height="50" style="margin-right: 15px;">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="card-title">${customerReview.customer_name}</h4>
                                            <p class="card-subtitle">
                                                ${customerReview.mainCategory.cate_name} || 
                                                  <fmt:formatDate   dateStyle = "long"  value = "${customerReview.created_Date}"/> 
                                                
                                            </p>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="commitDesc"> ${customerReview.review_comment}</div>
                                    </div>
                                </div>                            
                            </div>
                        </c:forEach>
                    </div>
                </div>


                <div class="col-md-5 col-sm-5">
                    <div  id="addSubCategory">
                        <h5 class="text-center">Rating Form</h5>
                        <hr/>
                        <form method="post" action="rateOurService" enctype="multipart/form-data">
                            <div class = "file-field input-field">
                                <div class="form-group">
                                    <label for="name">Your Name (Reviewer):</label>
                                    <input type="text" class="form-control" name="customer_name">
                                </div>
                                <div class="form-group">
                                    <label for="name">Rate out of Five:</label>
                                    <input type="text" class="form-control" name="rating" placeholder="* * * * *">
                                </div>
                                <div class="form-group">
                                    <label for="sel1">Select Parent Category:</label>
                                    <select class="form-control" name="mainCategory" id="sel1">
                                        <c:forEach var="mainCate" items="${allMainCategory}">
                                            <option  value="${mainCate.cate_id}">${mainCate.cate_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="comment">Comment Here:</label>
                                    <textarea class="form-control" rows="5" id="comment" name="review_comment"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="name">Your Photo:</label>
                                    <input type="file" class="form-control-file border" name="customerPhoto">
                                </div>


                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
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