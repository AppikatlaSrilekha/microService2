package com.klef.jfsd.dieticianapp.repository;

import com.klef.jfsd.dieticianapp.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
  
    User findByEmail(String email);
   
    User findByContact(String contact);
}
