<!doctype html>
<html lang="en">
    <head> <title>Add Sub category !</title></head>
    <body>
        <%@include file="/WEB-INF/jsp/admin/common/adminHeader.jsp"%>
        <%@include file="/WEB-INF/jsp/admin/common/adminFooter.jsp"%>
        <div class="container-fluid">
            <h3>Add sub category !</h3>
            <div class="row">
               <div class="col-md-7 col-sm-7">
                    <div class="table-responsive-md">            
                        <table class="table table-bordered">
                            <thead>
                                <tr style="color:#4e342e">
                                    <th>#</th>
                                    <th>cate name</th>
                                    <th>Parent </th>
                                    <th>Edit / Delete </th>
                                </tr>
                            </thead>
                            <tbody style="color:#004d40">
                                <c:forEach var="category" items="${allSubCategory}">
                                    <tr>
                                        <td>${category.subcate_id} </td>
                                        <td>${category.subCate_name}</td>
                                        <td>${category.mainCategory.cate_name}</td>
                                        <th>a</th>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-5 col-sm-5">
                    <div  id="addSubCategory">
                        <h5 class="text-center">Add New Sub Category</h5>
                        <hr/>
                        <form method="post" action="addSubCate" enctype="multipart/form-data">
                            <div class = "file-field input-field">
                                <div class="form-group">
                                    <label for="sel1">Select list:</label>
                                    <select class="form-control" name="mainCategory" id="sel1">
                                        <c:forEach var="mainCate" items="${allMainCategory}">
                                            <option  value="${mainCate.cate_id}">${mainCate.cate_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="name">Category name:</label>
                                    <input type="text" class="form-control" name="subCate_name">
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