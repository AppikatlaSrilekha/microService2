package com.klef.jfsd.dieticianapp.repository;

import com.klef.jfsd.dieticianapp.models.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String> {
   
    Admin findByEmailAndPassword(String email, String password);
}
