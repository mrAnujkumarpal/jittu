package com.bkn.dao.admin;

import com.bkn.model.*;

import java.util.List;

public interface DaoAdminService {

    public  void addMainCategory(MainCategory mainCategory);

    public void addSubCategory(SubCategory subCategory);

    public MainCategory fetchMainCategory(int Id);

    public void saveNewProduct(Product product);

    public void saveMyReview(Review review);

    public  void saveCarosule(Carousel carousel);

    public SubCategory getParentOfSubCategory(int subcate_id);

    public  SubCategory fetchSubCategoryBySubCateID(int subcate_id);

    List<Product> fetchAllProductsBySubCategory(SubCategory subCategory);

    List<SubCategory> fetchAllSubCategoryByMainCateory(MainCategory ainCategory);


}
