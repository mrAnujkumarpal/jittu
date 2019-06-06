package com.bkn.dao.impl;

import com.bkn.dao.admin.DaoAdminService;
import com.bkn.model.*;
import com.bkn.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DaoAdminServiceImpl implements DaoAdminService {

    @Autowired
    private MainCategoryRepository mainCategoryRepository;

    @Autowired
    private SubCategoryRepository subCategoryRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private CarouselRepository carouselRepository;

    public  void addMainCategory(MainCategory mainCategory){

        mainCategoryRepository.save(mainCategory);
    }


    @Override
    public void addSubCategory(SubCategory subCategory) {

        subCategoryRepository.save(subCategory);
    }

    @Override
    public MainCategory fetchMainCategory(int Id){
        return  mainCategoryRepository.getOne(Id);
    }

    @Override
    public  SubCategory fetchSubCategoryBySubCateID(int Id){

        return  subCategoryRepository.getOne(Id);
    }

    @Override
    public void saveMyReview(Review review){

        reviewRepository.save(review);
    }

    @Override
    public void   saveNewProduct(Product product){
 productRepository.save(product);
    }

    @Override
    public  void saveCarosule(Carousel carousel){
        carouselRepository.save(carousel);
    }

    @Override
    public SubCategory getParentOfSubCategory(int subcate_id){

       return subCategoryRepository.findMainCategoryBySubCateoryId(subcate_id);
    }

    @Override
    public List<SubCategory> fetchAllSubCategoryByMainCateory(MainCategory mainCategory){

     return    subCategoryRepository.findSubCateListByMainCategory(mainCategory);
    }

    @Override
    public List<Product> fetchAllProductsBySubCategory(SubCategory subCategory){
    return  productRepository.findProductsBySubCategory(subCategory);
    }
}
