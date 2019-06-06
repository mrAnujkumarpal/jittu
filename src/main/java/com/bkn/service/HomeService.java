package com.bkn.service;

import com.bkn.model.Carousel;
import com.bkn.model.MainCategory;
import com.bkn.model.Product;
import com.bkn.model.SubCategory;

import java.util.List;

public interface HomeService {

      List<MainCategory> getAllMainCatgory();

      List<SubCategory> getAllSubCategory();

      List<Carousel> getAllCarosule();

      List<Product> getAllProduct();

      List<Carousel> carosuleListByMainCategoryId(int id);
}
