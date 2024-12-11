package com.klef.jfsd.dieticianapp.repository;

import com.klef.jfsd.dieticianapp.models.Feedback;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, String> {
   
    Feedback findByEmail(String email);
}
