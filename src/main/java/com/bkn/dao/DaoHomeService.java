package com.bkn.dao;

import com.bkn.model.*;

import java.util.List;

public interface DaoHomeService {
    List<MainCategory> fetchAllMainCatgory();

    List<SubCategory> fetchAllSubCatgory();

    public List<Carousel> carosuleList();

    public  List<Product> productList();

    public List<Review> getAllCustomerReview();

    public List<Carousel> carosuleListByMainCategoryId(int id);
}
