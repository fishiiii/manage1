package com.whx.service;

import com.whx.dao.CityDao;
import com.whx.entity.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
@Service
@Transactional
public class CityServiceImpl implements CityService {
    @Autowired
    private CityDao cityDao;
    @Override
    public List<City> findAll() {
        return cityDao.findAll();
    }

    @Override
    public void save(City city) {
        //当前创建时间
        city.setCreatetime(new Date());
        //初始人数为0
        city.setNumbers(0);
        cityDao.save(city);
    }
}
