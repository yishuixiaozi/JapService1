package com.hhit.service;

import com.hhit.model.*;
public interface UserService {
    User selectUser(String username);
    void insertUser(User user);
    User selectByusername(String username);
}

