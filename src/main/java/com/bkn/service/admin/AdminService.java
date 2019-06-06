package com.bkn.service.admin;


import com.bkn.model.*;

import java.util.List;

public interface AdminService {

    public void addMainCategory(MainCategory mainCategory);

    public void addSubCategory(SubCategory subCategory);

    public  void  saveCustomerReview(Review review);

    public  void addNewProduct(Product product);

    public  void addCarosule(Carousel carousel);

    public MainCategory getMainCategoryById(int Id);

    public  SubCategory getSubCategoryBySubCateID(int Id);

    public SubCategory getParentOfSubCategory(int subcate_id);

    List<SubCategory> getAllSubCategoryByMainCateory(int cate_id);

    public  List<Product> getAllProductsBySubCateory(int subcate_id);


}
