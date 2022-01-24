package com.whx.service;

import com.whx.entity.City;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
public interface CityService {
    List<City> findAll();
    void save(City city);
}
