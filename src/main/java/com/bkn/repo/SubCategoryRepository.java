package com.bkn.repo;


import com.bkn.model.Carousel;
import com.bkn.model.MainCategory;
import com.bkn.model.SubCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SubCategoryRepository extends JpaRepository<SubCategory,Integer> {

    @Query("from SubCategory where mainCategory=?1")
    List<SubCategory> findSubCateListByMainCategory(MainCategory mainCategory);

    @Query("from SubCategory where subcate_id=?1")
    SubCategory findMainCategoryBySubCateoryId(int subCatID);


}
