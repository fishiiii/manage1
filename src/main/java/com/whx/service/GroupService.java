package com.whx.service;

import com.whx.entity.Group;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/25
 * @apiNote
 */
public interface GroupService {
    //查询所有
    List<Group> findAll();
    void save(Group group);
    //根据班级id查询小组信息
    List<Group> findByClazzId(String id);
}
