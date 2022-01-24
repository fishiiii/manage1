package com.whx.service;

import com.alibaba.druid.util.StringUtils;
import com.whx.dao.UserDao;
import com.whx.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * @author fishii
 * @date 2021/11/22
 * @apiNote
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public void register(User user) {
        User userDB = userDao.findByName(user.getName());
        if (userDB != null) {
            throw new RuntimeException("当前用户名已被注册,请修改后再试!");
        }
        user.setStatus("激活");
        user.setRegtime(new Date());
        userDao.register(user);
    }

    @Override
    public User login(User user) {
        User userDB = userDao.findByName(user.getName());
        if(userDB!=null){
//判断密码是否一致
            if(StringUtils.equals(userDB.getPassword(),user.getPassword())){
                return userDB;
            }
            throw new RuntimeException("密码输入错误~~");
        }
        throw new RuntimeException("用户名输入错误~~");
    }

}
