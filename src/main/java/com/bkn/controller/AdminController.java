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
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @Autowired
    HomeService homeService;

    Date currentDate = new Date();

     @RequestMapping(value = "/caro", method = RequestMethod.GET)
    public ModelAndView test() {
        
        ModelAndView mv = new ModelAndView("caro");
        return mv;
    }
    @RequestMapping(value = "/addMainCate", method = RequestMethod.GET)
    public ModelAndView addMainCategory() {

        ModelAndView mv = new ModelAndView("admin/addMainCategory");
        List<MainCategory> allCate = homeService.getAllMainCatgory();
        System.out.println(" allCate " + allCate.size());

        if (allCate != null) {
            System.out.println("find  details-- " + allCate.size());
            for (MainCategory cate : allCate) {
                byte[] encodeBase64 = Base64.encodeBase64(cate.getCate_image());
                String base64Encoded = "";
                System.out.println(" Inside 1");
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                    System.out.println("=============DONE==============");
                } catch (Exception eee) {
                    String message = eee.getMessage();
                    System.out.println("Exception message " + message);
                }
                cate.setBase64(base64Encoded);
            }
        }

        Collections.sort(allCate, (MainCategory main1, MainCategory main2)-> main2.getCate_id()-main1.getCate_id() );
        mv.addObject("allMainCategory", allCate);

        return mv;

    }

    @RequestMapping(value = "/addSubCate", method = RequestMethod.GET)
    public ModelAndView addSubCategory() {

        ModelAndView mv = new ModelAndView("admin/addSubCategory");
        System.out.println("here 2");
        mv.addObject("allMainCategory", homeService.getAllMainCatgory());
        List<SubCategory> subCateList= homeService.getAllSubCategory();

                Collections.sort(subCateList, (SubCategory obj1, SubCategory obj2) -> obj2.getSubcate_id()-obj1.getSubcate_id());
        mv.addObject("allSubCategory", subCateList);
        return mv;

    }

    @RequestMapping(value = "/addCarousel", method = RequestMethod.GET)
    public ModelAndView addCarousel() {

        ModelAndView mv = new ModelAndView("admin/addCarousel");
        mv.addObject("allMainCategory", homeService.getAllMainCatgory());
        List<Carousel> carouselsList=homeService.getAllCarosule();

        if (carouselsList != null) {
            for (Carousel carousel : carouselsList) {
                byte[] encodeBase64 = Base64.encodeBase64(carousel.getCarousel_image());
                String base64Encoded = "";
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (Exception eee) {
                    String message = eee.getMessage();
                    System.out.println("Exception message " + message);
                }
                carousel.setBase64(base64Encoded);
            }
        }


        Collections.sort(carouselsList, (Carousel object1, Carousel object2) -> object2.getCarousel_id() - object1.getCarousel_id());

    mv.addObject("carouselList",carouselsList);
        return mv;

    }

    @RequestMapping(value = "/addCarousel", method = RequestMethod.POST)
    public ModelAndView addCarousel(
            @ModelAttribute Carousel carousel,
            @RequestParam("carosuelPicture") MultipartFile fileUpload) {

        String carouselHeading = carousel.getCarousel_heading();
        String carouselQutoe = carousel.getCarousel_quotes();

       int mainCateId= carousel.getMainCategory().getCate_id();

        System.out.println("mainCateId " + mainCateId);



        System.out.println("carouselHeading " + carouselHeading);
        System.out.println("carouselQutoe " + carouselQutoe);
                
                
        if (fileUpload.getSize() > 0 && (!fileUpload.getOriginalFilename().isEmpty())) {

            Carousel c = new Carousel();

            c.setCarousel_heading(carouselHeading);
            c.setCarousel_quotes(carouselQutoe);
            c.setMainCategory(adminService.getMainCategoryById(mainCateId));
            c.setCreated_Date(currentDate);
            c.setCarouseImage_name(fileUpload.getOriginalFilename());
            c.setCarouselImageType(fileUpload.getContentType());

           try {
               c.setCarousel_image(fileUpload.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
            adminService.addCarosule(c);

        }

        return new ModelAndView("redirect:/addCarousel");

    }

    @RequestMapping(value = "/addNewProduct", method = RequestMethod.GET)
    public ModelAndView addProduct() {

        ModelAndView mv = new ModelAndView("admin/addNewProduct");
        System.out.println("here 2");
        List<Product> productList= homeService.getAllProduct();
        Collections.sort(productList, (Product prod1, Product prod2) -> prod2.getProd_id()-prod1.getProd_id());
        mv.addObject("allProducts",productList);
        mv.addObject("allSubCategory", homeService.getAllSubCategory());
        return mv;
    }

    @RequestMapping(value = "/addNewProduct", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute Product product) {

        String prodName = product.getProd_name();

        SubCategory subCate = adminService.getSubCategoryBySubCateID(product.getSubCategory().getSubcate_id());
        Product prod = new Product();
        prod.setSubCategory(subCate);
        prod.setProd_name(prodName);
        prod.setCharge(product.getCharge());
        prod.setProd_description(product.getProd_description());
        prod.setCreated_Date(currentDate);
        adminService.addNewProduct(prod);

        return "redirect:/addNewProduct";

    }

    @RequestMapping(value = "/addSubCate", method = RequestMethod.POST)
    public String addSubCategory(@ModelAttribute SubCategory subCategory) {

        MainCategory mainCategory = adminService.getMainCategoryById(subCategory.getMainCategory().getCate_id());

        SubCategory subCate = new SubCategory();
        subCate.setSubCate_name(subCategory.getSubCate_name());
        subCate.setMainCategory(mainCategory);

        subCate.setCreated_Date(currentDate);
        adminService.addSubCategory(subCate);

        return "redirect:/addSubCate";

    }

    @RequestMapping(value = "/addMainCate" , method = RequestMethod.POST)
    public ModelAndView addMainCategory(
            @ModelAttribute MainCategory mainCategoryData,
            @RequestParam("mainCategory") MultipartFile fileUpload) {

        String categoryName = mainCategoryData.getCate_name();
        if (fileUpload.getSize() > 0 && (!fileUpload.getOriginalFilename().isEmpty())) {

            MainCategory addNewMainCategory = new MainCategory();
            addNewMainCategory.setCate_name(categoryName);
            addNewMainCategory.setImage_name(fileUpload.getOriginalFilename());
            addNewMainCategory.setCategoryImageType(fileUpload.getContentType());
            try {
                addNewMainCategory.setCate_image(fileUpload.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
            addNewMainCategory.setCategoryEnabled(true);
            addNewMainCategory.setCreated_Date(currentDate);
            adminService.addMainCategory(addNewMainCategory);

        }


        return new ModelAndView("redirect:/addMainCate");
    }
}
