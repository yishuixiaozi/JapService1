package com.hhit.service.impl;

import com.hhit.dao.UserDao;
import com.hhit.model.User;
import com.hhit.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service(value = "userService")
public class UserServiceImpl implements UserService {
    @Resource
    UserDao userDao;

    public User selectUser(String username) {
        return userDao.selectUser(username);
        /*return null;*/
    }
    public void insertUser(User user){
        System.out.println("121212121");
        userDao.insertUser(user);

    }

    @Override
    public User selectByusername(String username) {
        return userDao.selectByusername(username);
    }
}
