package com.klef.jfsd.dieticianapp.services;

import com.klef.jfsd.dieticianapp.models.Dietician;
import java.util.List;

public interface DieticianService {
    String registerDietician(Dietician dietician);
    Dietician updateDietician(Dietician dietician);
    void deleteDietician(String email);
    List<Dietician> getAllDieticians();
    Dietician findDieticianByEmail(String email);
	void save(Dietician dietician);
}
