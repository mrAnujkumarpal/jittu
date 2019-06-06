package com.bkn.dao.impl;

import com.bkn.dao.DaoHomeService;
import com.bkn.model.*;
import com.bkn.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DaoHomeServiceImpl implements DaoHomeService {

    @Autowired
    MainCategoryRepository mainCategoryRepository;


    @Autowired
    SubCategoryRepository subCategoryRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    ReviewRepository reviewRepository;

    @Autowired
    CarouselRepository carouselRepository;

    @Override
    public List<MainCategory> fetchAllMainCatgory(){

        return  mainCategoryRepository.findAll();
    }

    @Override
    public List<SubCategory> fetchAllSubCatgory(){
        System.out.println("HomeServiceImpl");
        return  subCategoryRepository.findAll();
    }

    @Override
    public  List<Product> productList(){
        return  productRepository.findAll();
    }

    @Override
    public List<Review> getAllCustomerReview(){

        return reviewRepository.findAll();
    }

    @Override
    public  List<Carousel> carosuleList(){
        return  carouselRepository.findAll();
    }


    @Override
    public List<Carousel> carosuleListByMainCategoryId(int id) {

        MainCategory mainCategory = mainCategoryRepository.getOne(id);
        return carouselRepository.findCarouselListByMainCategory(mainCategory);
    }

}
