package com.bkn.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;


@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "Carousel")
public class Carousel  implements Serializable {

        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        public int carousel_id;

        @Column(name = "Carousel_heading")
        public String carousel_heading;

    @Column(name = "Carousel_quotes")
    public String carousel_quotes;

        @Lob
        @Column(name = "Carousel_image")
        private byte[] carousel_image;

        @Column(name = "image_name")
        private String CarouseImage_name;

        @Column(name = "image_Type")
        private String CarouselImageType;

        @Transient
        private String base64;

        @Column(name = "created_Date")
        public Date created_Date;

    @OneToOne(cascade = CascadeType.DETACH, fetch = FetchType.EAGER)
    @JsonManagedReference
    public MainCategory mainCategory;


    public int getCarousel_id() {
        return carousel_id;
    }

    public void setCarousel_id(int carousel_id) {
        this.carousel_id = carousel_id;
    }

    public byte[] getCarousel_image() {
        return carousel_image;
    }

    public void setCarousel_image(byte[] carousel_image) {
        this.carousel_image = carousel_image;
    }

    public String getCarouseImage_name() {
        return CarouseImage_name;
    }

    public void setCarouseImage_name(String carouseImage_name) {
        CarouseImage_name = carouseImage_name;
    }

    public String getCarouselImageType() {
        return CarouselImageType;
    }

    public void setCarouselImageType(String carouselImageType) {
        CarouselImageType = carouselImageType;
    }

    public String getBase64() {
        return base64;
    }

    public void setBase64(String base64) {
        this.base64 = base64;
    }

    public Date getCreated_Date() {
        return created_Date;
    }

    public void setCreated_Date(Date created_Date) {
        this.created_Date = created_Date;
    }

    public MainCategory getMainCategory() {
        return mainCategory;
    }

    public void setMainCategory(MainCategory mainCategory) {
        this.mainCategory = mainCategory;
    }

    public String getCarousel_heading() {
        return carousel_heading;
    }

    public void setCarousel_heading(String carousel_heading) {
        this.carousel_heading = carousel_heading;
    }

    public String getCarousel_quotes() {
        return carousel_quotes;
    }

    public void setCarousel_quotes(String carousel_quotes) {
        this.carousel_quotes = carousel_quotes;
    }
}
