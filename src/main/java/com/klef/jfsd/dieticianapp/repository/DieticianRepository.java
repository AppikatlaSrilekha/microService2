package com.klef.jfsd.dieticianapp.repository;

import com.klef.jfsd.dieticianapp.models.Dietician;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DieticianRepository extends JpaRepository<Dietician, String> {
    
    Dietician findByEmail(String email);
    
    Dietician findByLicense(String license);
}
