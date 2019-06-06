package com.bkn.controller;

import com.bkn.model.Carousel;
import com.bkn.model.MainCategory;
import com.bkn.model.Review;
import com.bkn.service.HomeService;
import com.bkn.service.admin.AdminService;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class StaticsPageController {

    @Autowired
    HomeService homeService;

    @Autowired
    AdminService adminService;

    Date currentDate = new Date();

    @RequestMapping(value = "/rateOurService", method = RequestMethod.POST)
    public ModelAndView rateOurService(
            @ModelAttribute Review rev,
            @RequestParam("customerPhoto") MultipartFile fileUpload) {

        int mainCatID = rev.getMainCategory().getCate_id();

        MainCategory mainCategory = adminService.getMainCategoryById(mainCatID);

        Review review = new Review();

        review.setCustomer_name(rev.getCustomer_name());
        review.setMainCategory(mainCategory);
        review.setRating(rev.getRating());
        review.setReview_comment(rev.getReview_comment());
        review.setCreated_Date(currentDate);

        if (fileUpload.getSize() > 0 && (!fileUpload.getOriginalFilename().isEmpty())) {
            try {
                review.setCustomer_Photo(fileUpload.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        adminService.saveCustomerReview(review);

        return new ModelAndView("redirect:/rateOurService");
    }

    @RequestMapping(value = "/rateOurService", method = RequestMethod.GET)
    public ModelAndView rateOurService() {
        ModelAndView mv = new ModelAndView("staticsPages/rateUs");

        List<Review> customerReview = homeService.getAllCustomerReview();
        System.out.println("customerReview " + customerReview.size());
        if (customerReview != null) {
            for (Review rev : customerReview) {
                byte[] encodeBase64 = Base64.encodeBase64(rev.getCustomer_Photo());
                String base64Encoded = "";
                try {
                    base64Encoded = new String(encodeBase64, "UTF-8");
                } catch (Exception eee) {
                    String message = eee.getMessage();
                    System.out.println("Exception message " + message);
                }
                rev.setBase64(base64Encoded);
            }
        }
        mv.addObject("customerReview", customerReview);
        System.out.println("DONE");

        List<MainCategory> allCate = homeService.getAllMainCatgory();
        mv.addObject("allMainCategory", allCate);

        System.out.println("DONE DONE DONE");
        return mv;
    }

}
