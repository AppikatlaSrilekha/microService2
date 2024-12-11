package com.klef.jfsd.dieticianapp.services;

import com.klef.jfsd.dieticianapp.models.Admin;
import com.klef.jfsd.dieticianapp.models.Dietician;
import com.klef.jfsd.dieticianapp.models.User;

import java.util.List;

public interface AdminService {
    boolean authenticateAdmin(String email, String password);
    List<Admin> getAllAdmins();
    void addAdmin(Admin admin);
    void deleteAdmin(String email);
    Admin updateAdmin(Admin admin);
   

}
