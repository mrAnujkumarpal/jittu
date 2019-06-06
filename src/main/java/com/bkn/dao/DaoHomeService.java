package com.bkn.dao;

import com.bkn.model.Carousel;
import com.bkn.model.MainCategory;
import com.bkn.model.Product;
import com.bkn.model.SubCategory;

import java.util.List;

public interface DaoHomeService {
    List<MainCategory> fetchAllMainCatgory();

    List<SubCategory> fetchAllSubCatgory();

    public List<Carousel> carosuleList();

    public  List<Product> productList();

    public List<Carousel> carosuleListByMainCategoryId(int id);
}
