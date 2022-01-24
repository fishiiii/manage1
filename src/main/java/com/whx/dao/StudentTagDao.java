package com.whx.dao;

import com.whx.entity.StudentTag;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author fishii
        * @date 2021/11/27
        * @apiNote
 */
@Mapper
public interface StudentTagDao extends BaseDao<StudentTag,String> {
}
