package com.whx.service;

import com.whx.entity.Tag;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
public interface TagService {
    //查询所有
    List<Tag> findAll();

    void save(Tag tag);

    List<Tag> findByType(String type);
}
