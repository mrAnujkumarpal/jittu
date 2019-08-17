package com.bkn.service.impl;

import com.bkn.dao.DaoHomeService;
import com.bkn.model.*;
import com.bkn.service.HomeService;
import java.io.UnsupportedEncodingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.function.Consumer;
import org.apache.tomcat.util.codec.binary.Base64;

@Service
public class HomeServiceImpl implements HomeService {

    String base64Encoded = "";

    @Autowired
    DaoHomeService daoHomeService;

    @Override
    public List<MainCategory> getAllMainCatgory() {
        List<MainCategory> allCate = daoHomeService.fetchAllMainCatgory();
        if (allCate != null) {
            System.out.println("find  details-- " + allCate.size());
            allCate.forEach((MainCategory cate) -> {
                byte[] encodeBase64 = Base64.encodeBase64(cate.getCate_image());
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    System.out.println("Exception message " + e.getMessage());
                }
                cate.setBase64(base64Encoded);
            });
        }
        return allCate;
    }

    @Override
    public List<SubCategory> getAllSubCategory() {
        System.out.println("HomeServiceImpl");
        return daoHomeService.fetchAllSubCatgory();
    }

    @Override
    public List<Product> getAllProduct() {

        return daoHomeService.productList();
    }

    @Override
    public List<Review> getAllCustomerReview() {
         List<Review> customerReview =daoHomeService.getAllCustomerReview();
        if (customerReview != null) {
            customerReview.forEach((Review rev) -> {
                byte[] encodeBase64 = Base64.encodeBase64(rev.getCustomer_Photo());
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    System.out.println("Exception message " + e.getMessage());
                }
                rev.setBase64(base64Encoded);
             });
        }
        return customerReview;
    }

    @Override
    public List<Carousel> getAllCarosule() {
        
         List<Carousel> carouselsList =daoHomeService.carosuleList();

        if (carouselsList != null) {
            carouselsList.forEach((carousel) -> {
                byte[] encodeBase64 = Base64.encodeBase64(carousel.getCarousel_image());                
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    System.out.println("Exception message " + e.getMessage());
                }
                carousel.setBase64(base64Encoded);
             });
        }


        return carouselsList;
    }

    @Override
    public List<Carousel> carosuleListByMainCategoryId(int id) {
        
         List<Carousel> carouselList4Page = daoHomeService.carosuleListByMainCategoryId(id);
        if (carouselList4Page != null) {
            carouselList4Page.forEach((carosule) -> {
                byte[] encodeBase64 = Base64.encodeBase64(carosule.getCarousel_image());
              
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    System.out.println("Exception message " + e.getMessage());
                }
                carosule.setBase64(base64Encoded);
             });
        }
        
        return carouselList4Page;
    }
}
