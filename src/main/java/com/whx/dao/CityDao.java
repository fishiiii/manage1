package com.whx.dao;

import com.whx.entity.City;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
@Mapper
public interface CityDao extends BaseDao<City, String> {

}
