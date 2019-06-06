package com.bkn.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "ProductReview")
public class ProductReview implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int  id;

    @Column(name = "customer_name")
    public String customer_name;

    @Column(name = "review_comment")
    public String review_comment;

    @Column(name = "review_rate")
    public String rating;

    @OneToOne(cascade = CascadeType.DETACH, fetch = FetchType.EAGER)
    @JsonManagedReference
    public Product product;


    @Column(name = "created_Date")
    public Date created_Date;

}
