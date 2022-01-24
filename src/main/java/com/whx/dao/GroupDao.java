package com.whx.dao;

import com.whx.entity.Group;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
@Mapper
public interface GroupDao extends BaseDao<Group, String > {
    List<Group> findByClazzId(String id);
}
