package com.hhit.dao;

import com.hhit.model.*;
import org.springframework.stereotype.Repository;

@Repository(value = "iUserDao")
public interface UserDao {
    User selectUser(String username);
    void insertUser(User user);
    User selectByusername(String usrname);
}
