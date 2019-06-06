<!doctype html>
<html lang="en">
    <head><title>Add  carousel !</title></head>
    <body>
        <%@include file="/WEB-INF/jsp/admin/common/adminHeader.jsp"%>
        <%@include file="/WEB-INF/jsp/admin/common/adminFooter.jsp"%>
        <div class="container-fluid">
            <h3>Add  carousel !</h3>
            <div class="row">
                <div class="col-lg-8 col-md-7 col-sm-7">
                    <div class="table-responsive-md">
                        <table class="table table-bordered">
                            <thead>
                                <tr style="color:#4e342e">
                                    <th>#</th>
                                    <th>Heading</th>
                                    <th>Carousel Quotes </th>
                                    <th>Belongs-To </th>
                                    <th>Carousel Image </th>
                                    <th>Edit / Delete </th>
                                </tr>
                            </thead>
                            <tbody style="color:#004d40">
                                <c:forEach var="caroList" items="${carouselList}">
                                    <tr>
                                        <td>${caroList.carousel_id} </td>
                                        <td>${caroList.carousel_heading}</td>
                                        <td>${caroList.carousel_quotes}</td>
                                        <td>${caroList.mainCategory.cate_name}</td>
                                        <td>
                                            <a href="#">
                                                <img class="mx-auto d-block" src="data:image/jpeg;base64,${caroList.base64}" width="100%">
                                            </a>
                                        </td>
                                        <th>a</th>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-lg-4 col-md-5 col-sm-5">
                    <div  id="addSubCategory">
                        <h5 class="text-center">Add New Sub Category</h5>
                        <hr/>
                        <form method="post" action="addCarousel" enctype="multipart/form-data">
                            <div class = "file-field input-field">
                                <div class="form-group">
                                    <label for="sel1">Select Page:</label>
                                    <select class="form-control" name="mainCategory" id="sel1">
                                        <c:forEach var="mainCate" items="${allMainCategory}">
                                            <option  value="${mainCate.cate_id}">${mainCate.cate_name} page</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="name">Carousel Heading:</label>
                                    <input type="text" class="form-control" name="carousel_heading">
                                </div>
                                <div class="form-group">
                                    <label for="name">Carousel Quote:</label>
                                    <input type="text" class="form-control" name="carousel_quotes">
                                </div>
                                <div class="form-group">
                                    <label for="name">Carousel Image:</label>
                                    <input type="file" class="form-control-file border" name="carosuelPicture">
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>