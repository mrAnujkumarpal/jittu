package com.bkn.service;

import com.bkn.model.*;

import java.util.List;

public interface HomeService {

      List<MainCategory> getAllMainCatgory();

      List<SubCategory> getAllSubCategory();

      List<Carousel> getAllCarosule();

      List<Product> getAllProduct();

      List<Review> getAllCustomerReview();

      List<Carousel> carosuleListByMainCategoryId(int id);
}
