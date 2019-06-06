package com.bkn.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "Product")
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int prod_id;

    @Column(name = "product_name")
    public String prod_name;

    @Column(name = "Description")
    public String prod_description;

    @Column(name = "Charge")
    public String charge;

    @OneToOne(cascade = CascadeType.DETACH, fetch = FetchType.EAGER)
    @JsonManagedReference
    public SubCategory subCategory;

    @Column(name = "created_Date")
    public Date created_Date;


    public int getProd_id() {
        return prod_id;
    }

    public void setProd_id(int prod_id) {
        this.prod_id = prod_id;
    }

    public String getProd_name() {
        return prod_name;
    }

    public void setProd_name(String prod_name) {
        this.prod_name = prod_name;
    }

    public SubCategory getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(SubCategory subCategory) {
        this.subCategory = subCategory;
    }

    public Date getCreated_Date() {
        return created_Date;
    }

    public void setCreated_Date(Date created_Date) {
        this.created_Date = created_Date;
    }

    public String getCharge() {
        return charge;
    }

    public void setCharge(String charge) {
        this.charge = charge;
    }

    public String getProd_description() {
        return prod_description;
    }

    public void setProd_description(String prod_description) {
        this.prod_description = prod_description;
    }
}
