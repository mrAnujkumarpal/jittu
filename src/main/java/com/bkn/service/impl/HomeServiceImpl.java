package com.bkn.service.impl;

import com.bkn.dao.DaoHomeService;
import com.bkn.model.Carousel;
import com.bkn.model.MainCategory;
import com.bkn.model.Product;
import com.bkn.model.SubCategory;
import com.bkn.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomeServiceImpl implements HomeService {

    @Autowired
     DaoHomeService daoHomeService;


    public  List<MainCategory> getAllMainCatgory(){
        return daoHomeService.fetchAllMainCatgory();
    }

    @Override
   public List<SubCategory> getAllSubCategory(){
System.out.println("HomeServiceImpl");
        return daoHomeService.fetchAllSubCatgory();
    }

    @Override
    public  List<Product> getAllProduct(){

        return  daoHomeService.productList();
    }

    @Override
    public  List<Carousel> getAllCarosule(){

        return  daoHomeService.carosuleList();
    }

    @Override
   public List<Carousel> carosuleListByMainCategoryId(int id){
        return  daoHomeService.carosuleListByMainCategoryId(id);
    }
}
