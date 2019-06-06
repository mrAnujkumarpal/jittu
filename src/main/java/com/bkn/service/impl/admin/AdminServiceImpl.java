package com.bkn.service.impl.admin;

import com.bkn.dao.admin.DaoAdminService;
import com.bkn.model.*;
import com.bkn.service.admin.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private DaoAdminService daoAdminService;


    @Override
    public void addMainCategory(MainCategory mainCategory) {

        daoAdminService.addMainCategory(mainCategory);
    }


    @Override
    public void addSubCategory(SubCategory subCategory) {

        daoAdminService.addSubCategory(subCategory);
    }

    @Override
    public  void  saveCustomerReview(Review review){

        daoAdminService.saveMyReview(review);
    }

    @Override
    public MainCategory getMainCategoryById(int Id){
     return    daoAdminService.fetchMainCategory(Id);
    }

    @Override
    public  SubCategory getSubCategoryBySubCateID(int Id){

        return  daoAdminService.fetchSubCategoryBySubCateID(Id);
    }

    @Override
    public SubCategory getParentOfSubCategory(int subcate_id){

        return daoAdminService.getParentOfSubCategory(subcate_id);
    }

    @Override
    public  List<SubCategory> getAllSubCategoryByMainCateory(int cate_id){

        MainCategory mainCategory = daoAdminService.fetchMainCategory(cate_id);
     return    daoAdminService.fetchAllSubCategoryByMainCateory(mainCategory);
    }
@Override
public  List<Product> getAllProductsBySubCateory(int subcate_id){
        SubCategory subCategory = daoAdminService.fetchSubCategoryBySubCateID(subcate_id);

        return daoAdminService.fetchAllProductsBySubCategory(subCategory);

    }

    @Override
    public  void addNewProduct(Product product){
         daoAdminService.saveNewProduct(product);
    }

    @Override
    public  void addCarosule(Carousel carousel){
        daoAdminService.saveCarosule(carousel);
    }
}
