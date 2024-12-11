package com.klef.jfsd.dieticianapp.repository;

import com.klef.jfsd.dieticianapp.models.Subscription;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SubscriptionRepository extends JpaRepository<Subscription, String> {
    
    Subscription findByEmail(String email);
}
