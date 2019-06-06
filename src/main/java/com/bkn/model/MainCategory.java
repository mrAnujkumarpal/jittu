package com.bkn.model;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "MainCategory")
public class MainCategory implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int cate_id;

    @Column(name = "Category_name")
    public String cate_name;

    @Lob
    @Column(name = "Category_image")
    private byte[] cate_image;

    @Column(name = "image_name")
    private String image_name;

    @Column(name = "image_Type")
    private String categoryImageType;

    @Transient
    private String base64;

    @Column(name = "Category_Enabled")
    private Boolean categoryEnabled = true;

    @Column(name = "created_Date")
    public Date created_Date;

    public int getCate_id() {
        return cate_id;
    }

    public void setCate_id(int cate_id) {
        this.cate_id = cate_id;
    }

    public String getCate_name() {
        return cate_name;
    }

    public void setCate_name(String cate_name) {
        this.cate_name = cate_name;
    }

    public byte[] getCate_image() {
        return cate_image;
    }

    public void setCate_image(byte[] cate_image) {
        this.cate_image = cate_image;
    }

    public Boolean getCategoryEnabled() {
        return categoryEnabled;
    }

    public void setCategoryEnabled(Boolean categoryEnabled) {
        this.categoryEnabled = categoryEnabled;
    }

    public String getCategoryImageType() {
        return categoryImageType;
    }

    public void setCategoryImageType(String categoryImageType) {
        this.categoryImageType = categoryImageType;
    }

    public Date getCreated_Date() {
        return created_Date;
    }

    public void setCreated_Date(Date created_Date) {
        this.created_Date = created_Date;
    }

    public String getImage_name() {
        return image_name;
    }

    public void setImage_name(String image_name) {
        this.image_name = image_name;
    }

    public String getBase64() {
        return base64;
    }

    public void setBase64(String base64) {
        this.base64 = base64;
    }
}
