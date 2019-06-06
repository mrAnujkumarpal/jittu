package com.bkn.repo;

import com.bkn.model.MainCategory;
import com.bkn.model.Product;
import com.bkn.model.SubCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product,Integer> {

    @Query("from Product where subCategory=?1")
    List<Product> findProductsBySubCategory(SubCategory subCategory);
}
