package com.whx.dao;

import com.whx.entity.Clazz;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author fishii
 * @date 2021/11/24
 * @apiNote
 */
@Mapper
public interface ClazzDao extends BaseDao<Clazz, String> {
}
