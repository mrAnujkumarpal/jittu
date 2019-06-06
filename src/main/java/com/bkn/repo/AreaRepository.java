package com.bkn.repo;

import com.bkn.model.Area;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AreaRepository extends JpaRepository<Area, Integer> {

    @Query("from Area where area_name=?1")
    Area findAreaByName(String area_name);

    @Query("from Area where pincode=?1")
    Area findAreaByPinCode(String pincode);
}
