package com.bkn.model;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "SubCategory")
public class SubCategory implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int subcate_id;

    @Column(name = "sub_Category_name")
    public String subCate_name;

    @OneToOne(cascade = CascadeType.DETACH, fetch = FetchType.EAGER)
    @JsonManagedReference
    public MainCategory mainCategory;

    @Column(name = "created_Date")
    public Date created_Date;

    public int getSubcate_id() {
        return subcate_id;
    }

    public void setSubcate_id(int subcate_id) {
        this.subcate_id = subcate_id;
    }

    public String getSubCate_name() {
        return subCate_name;
    }

    public void setSubCate_name(String subCate_name) {
        this.subCate_name = subCate_name;
    }

    public MainCategory getMainCategory() {
        return mainCategory;
    }

    public void setMainCategory(MainCategory mainCategory) {
        this.mainCategory = mainCategory;
    }

    public Date getCreated_Date() {
        return created_Date;
    }

    public void setCreated_Date(Date created_Date) {
        this.created_Date = created_Date;
    }
}
