package com.whx.dao;

import com.whx.entity.Tag;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
@Mapper
public interface TagDao extends BaseDao<Tag, String> {
    //班级模块只查班级类型的标签
    List<Tag> findByType(String type);
}
