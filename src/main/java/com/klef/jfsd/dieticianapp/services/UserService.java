package com.klef.jfsd.dieticianapp.services;

import com.klef.jfsd.dieticianapp.models.User;
import java.util.List;

public interface UserService {
    String registerUser(User user);
    User updateUser(User user);
    void deleteUser(String email);
    List<User> getAllUsers();
    User findUserByEmail(String email);
}
