<!doctype html>
<html lang="en">
    <head><title>Add* New Product !</title></head>
    <body>
        <%@include file="/WEB-INF/jsp/admin/common/adminHeader.jsp"%>
        <%@include file="/WEB-INF/jsp/admin/common/adminFooter.jsp"%>
        <div class="container-fluid">
            <h3>Add New Product !</h3>
            <div class="row">
                <div class="col-md-7 col-sm-7">
                    <div class="table-responsive-md">   
                        <table class="table table-bordered">
                            <thead>
                                <tr style="color:#4e342e">
                                    <th>#</th>
                                    <th>cate name</th>
                                    <th>Charge </th>
                                    <th>Description </th>
                                    <th>Parent </th>
                                    <th>Edit / Delete </th>
                                </tr>
                            </thead>
                            <tbody style="color:#004d40">
                                <c:forEach var="prod" items="${allProducts}">
                                    <tr>
                                        <td>${prod.prod_id} </td>
                                        <td>${prod.prod_name}</td>
                                        <td>${prod.charge}</td>
                                        <td><small><i>${prod.prod_description}</i></small></td>
                                        <td>${prod.subCategory.subCate_name}</td>
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
                        <form method="post" action="addNewProduct" enctype="multipart/form-data">
                            <div class = "file-field input-field">
                                <div class="form-group">
                                    <label for="sel1">Select list:</label>
                                    <select class="form-control" name="subCategory" id="sel1">
                                        <c:forEach var="category" items="${allSubCategory}">
                                            <option  value="${category.subcate_id}">${category.subCate_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="name">Product name:</label>
                                    <input type="text" class="form-control" name="prod_name">
                                </div>
                                <div class="form-group">
                                    <label for="name">Charges:</label>
                                    <input type="text" class="form-control" name="charge">
                                </div>
                                <div class="form-group">
                                    <label for="comment">Description</label>
                                    <textarea class="form-control" rows="5" id="comment" name="prod_description"></textarea>
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