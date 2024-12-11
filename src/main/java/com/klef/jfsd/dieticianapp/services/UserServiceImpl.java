package com.klef.jfsd.dieticianapp.services;

import com.klef.jfsd.dieticianapp.models.User;
import com.klef.jfsd.dieticianapp.repository.UserRepository;
import com.klef.jfsd.dieticianapp.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public String registerUser(User user) {
        if (userRepository.existsById(user.getEmail())) {
            return "User with this email already exists";
        }
        userRepository.save(user);
        return "User registered successfully";
    }

    @Override
    public User updateUser(User user) {
        return userRepository.save(user);
    }

    @Override
    public void deleteUser(String email) {
        userRepository.deleteById(email);
    }

    @Override
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

	
}
