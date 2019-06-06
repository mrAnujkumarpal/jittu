package com.bkn.dao.admin;

import com.bkn.model.Carousel;
import com.bkn.model.MainCategory;
import com.bkn.model.Product;
import com.bkn.model.SubCategory;

import java.util.List;

public interface DaoAdminService {

    public  void addMainCategory(MainCategory mainCategory);

    public void addSubCategory(SubCategory subCategory);

    public MainCategory fetchMainCategory(int Id);

    public void saveNewProduct(Product product);

    public  void saveCarosule(Carousel carousel);

    public SubCategory getParentOfSubCategory(int subcate_id);

    public  SubCategory fetchSubCategoryBySubCateID(int subcate_id);

    List<Product> fetchAllProductsBySubCategory(SubCategory subCategory);

    List<SubCategory> fetchAllSubCategoryByMainCateory(MainCategory ainCategory);


}
