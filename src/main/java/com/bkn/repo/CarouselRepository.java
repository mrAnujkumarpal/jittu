package com.bkn.repo;


import com.bkn.model.Area;
import com.bkn.model.Carousel;
import com.bkn.model.MainCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CarouselRepository extends JpaRepository<Carousel, Integer> {

    @Query("from Carousel where mainCategory=?1")
    List<Carousel> findCarouselListByMainCategory(MainCategory mainCategory);
}
