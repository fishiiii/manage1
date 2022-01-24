package com.whx.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
public interface BaseDao<T, K> {
    void save(T t);
    void update(T t);
    void delete(K k);
    T findById(K k);
    List<T> findAll();
    List<T> findByPage(@Param("start") Integer start, @Param("rows") Integer rows);
    Long findCounts();
}
