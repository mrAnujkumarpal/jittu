package com.bkn.controller;

import com.bkn.model.Carousel;
import com.bkn.model.MainCategory;
import com.bkn.model.Product;
import com.bkn.model.SubCategory;
import com.bkn.service.HomeService;
import com.bkn.service.admin.AdminService;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HomeController {

    @Autowired
    HomeService homeService;

    @Autowired
    AdminService adminService;

    @RequestMapping(value = "/products/{id}", method = RequestMethod.GET)
    public ModelAndView requestedService(@PathVariable("id") int subcate_id) {
        ModelAndView mv = new ModelAndView("categories");

        System.out.println("subcate_id " + subcate_id);

        //SubCategory subCategory=   adminService.getParentOfSubCategory(subcate_id);

        SubCategory subCategory= adminService.getSubCategoryBySubCateID(subcate_id);
        System.out.println("subcate_id " + subCategory.getSubcate_id());
        System.out.println("parent ID " + subCategory.getMainCategory().getCate_id());
        int mainCatId=subCategory.getMainCategory().getCate_id();
        List<SubCategory> subCategoryList=adminService.getAllSubCategoryByMainCateory(mainCatId);
        System.out.println(" SubCategory " + subCategoryList.size());
        mv.addObject("subCategoryList",subCategoryList);

        System.out.println(" mainCatId " + mainCatId);

        List<Carousel> carouselList4Page= homeService.carosuleListByMainCategoryId(mainCatId);
        if (carouselList4Page != null) {
            for (Carousel carosule : carouselList4Page) {
                byte[] encodeBase64 = Base64.encodeBase64(carosule.getCarousel_image());
                String base64Encoded = "";
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (Exception eee) {
                    String message = eee.getMessage();
                    System.out.println("Exception message " + message);
                }
                carosule.setBase64(base64Encoded);
            }
        }
        mv.addObject("carouselList",carouselList4Page);



        List<Product> productList=adminService.getAllProductsBySubCateory(subcate_id);

        System.out.println(" productList " + productList.size());
        mv.addObject("productList",productList);


        return  mv;
    }


    @RequestMapping(value = "/service/{id}", method = RequestMethod.GET)
    public ModelAndView requestedProducts(@PathVariable("id") int cate_id) {
        ModelAndView mv = new ModelAndView("categories");
        List<Carousel> carouselList4Page= homeService.carosuleListByMainCategoryId(cate_id);
        if (carouselList4Page != null) {
            for (Carousel carosule : carouselList4Page) {
                byte[] encodeBase64 = Base64.encodeBase64(carosule.getCarousel_image());
                String base64Encoded = "";
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (Exception eee) {
                    String message = eee.getMessage();
                    System.out.println("Exception message " + message);
                }
                carosule.setBase64(base64Encoded);
            }
        }
        System.out.println(" cate_id " + cate_id);
        mv.addObject("carouselList",carouselList4Page);
        List<SubCategory> subCategoryList=adminService.getAllSubCategoryByMainCateory(cate_id);
        System.out.println(" SubCategory " + subCategoryList.size());
        mv.addObject("subCategoryList",subCategoryList);
        return  mv;
    }
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView deafult() {
        ModelAndView mv = new ModelAndView("home");
        List<MainCategory> allCate = homeService.getAllMainCatgory();
        if (allCate != null) {
            for (MainCategory cate : allCate) {
                byte[] encodeBase64 = Base64.encodeBase64(cate.getCate_image());
                String base64Encoded = "";
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (Exception eee) {
                    String message = eee.getMessage();
                    System.out.println("Exception message " + message);
                }
                cate.setBase64(base64Encoded);
            }
        }

        mv.addObject("allMainCategory", allCate);

        List<Carousel> carouselList4Page= homeService.carosuleListByMainCategoryId(0);
        if (carouselList4Page != null) {
            for (Carousel carosule : carouselList4Page) {
                byte[] encodeBase64 = Base64.encodeBase64(carosule.getCarousel_image());
                String base64Encoded = "";
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (Exception eee) {
                    String message = eee.getMessage();
                    System.out.println("Exception message " + message);
                }
                carosule.setBase64(base64Encoded);
            }
        }

        mv.addObject("carouselList",carouselList4Page);
        return mv;
    }

}
