<!doctype html>
<html lang="en">
    <head> <title>Add main category !</title></head>
    <body>
        <%@include file="/WEB-INF/jsp/admin/common/adminHeader.jsp"%>
        <%@include file="/WEB-INF/jsp/admin/common/adminFooter.jsp"%>

        <div class="container-fluid">
            <h3>Add main category !</h3>
            <div class="row">
               <div class="col-md-7 col-sm-7">
                    <div class="table-responsive-md">          
                        <div class="table-responsive-sm">          
                            <table class="table table-bordered">
                                <thead>
                                    <tr style="color:#4e342e">
                                        <th>#</th>
                                        <th>cate_name</th>
                                        <th>image_name</th>
                                        <th>image</th>
                                        <th>Edit / Delete </th>
                                    </tr>
                                </thead>
                                <tbody style="color:#004d40">
                                    <c:forEach var="category" items="${allMainCategory}">
                                        <tr>
                                            <td>${category.cate_id} </td>
                                            <td>${category.cate_name}</td>
                                            <td>${category.image_name}</td>
                                            <td>
                                                <a href="#">
                                                    <img class="mx-auto d-block" src="data:image/jpeg;base64,${category.base64}" Style="max-height:100px;">
                                                </a>
                                            </td>
                                            <th>a</th>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-sm-5">
                    <div  id="addSubCategory">
                        <h5 class="text-center">Add New Category</h5>
                        <hr/>
                        <form method="post" action="addMainCate" enctype="multipart/form-data">
                            <div class = "file-field input-field">
                                <div class="form-group">
                                    <label for="name">Category name:</label>
                                    <input type="text" class="form-control" name="cate_name">
                                </div>
                                <div class="form-group">
                                    <label for="name">Category Image:</label>
                                    <input type="file" class="form-control-file border" name="mainCategory">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>