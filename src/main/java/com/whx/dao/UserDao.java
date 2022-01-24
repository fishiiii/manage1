package com.whx.dao;

import com.whx.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * @author fishii
 * @date 2021/11/22
 * @apiNote
 */
@Mapper
public interface UserDao {
    void register(User user);
    User findByName(String name);
}
