package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    User getUserById(Long id);
    void updateUser(Long id ,String username, String email, String password);
}
