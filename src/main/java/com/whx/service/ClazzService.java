package com.whx.service;

import com.whx.entity.Clazz;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/24
 * @apiNote
 */
public interface ClazzService {
    List<Clazz> findAll();
    void save(Clazz clazz);
}
