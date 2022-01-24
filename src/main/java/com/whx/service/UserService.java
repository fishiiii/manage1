package com.whx.service;

import com.whx.entity.User;

/**
 * @author fishii
 * @date 2021/11/22
 * @apiNote
 */
public interface UserService {
    void register(User user);
    User login(User user);
}
