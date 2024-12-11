package com.klef.jfsd.dieticianapp.services;

import com.klef.jfsd.dieticianapp.models.Admin;
import com.klef.jfsd.dieticianapp.models.Dietician;
import com.klef.jfsd.dieticianapp.repository.AdminRepository;
import com.klef.jfsd.dieticianapp.services.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Override
    public boolean authenticateAdmin(String email, String password) {
        Admin admin = adminRepository.findByEmailAndPassword(email, password);
        return admin != null;
    }

    @Override
    public List<Admin> getAllAdmins() {
        return adminRepository.findAll();
    }

    @Override
    public void addAdmin(Admin admin) {
        adminRepository.save(admin);
    }

    @Override
    public void deleteAdmin(String email) {
        adminRepository.deleteById(email);
    }

    @Override
    public Admin updateAdmin(Admin admin) {
        return adminRepository.save(admin);
    }

	
}
