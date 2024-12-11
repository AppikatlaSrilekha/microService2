package com.klef.jfsd.dieticianapp.services;

import com.klef.jfsd.dieticianapp.models.Dietician;
import com.klef.jfsd.dieticianapp.repository.DieticianRepository;
import com.klef.jfsd.dieticianapp.services.DieticianService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class DieticianServiceImpl implements DieticianService {

    @Autowired
    private DieticianRepository dieticianRepository;

    @Override
    public String registerDietician(Dietician dietician) {
        if (dieticianRepository.existsById(dietician.getEmail())) {
            return "Dietician with this email already exists";
        }
        dieticianRepository.save(dietician);
        return "Dietician registered successfully";
    }

    @Override
    public Dietician updateDietician(Dietician dietician) {
        return dieticianRepository.save(dietician);
    }

    @Override
    public void deleteDietician(String email) {
        dieticianRepository.deleteById(email);
    }

    @Override
    public List<Dietician> getAllDieticians() {
        return dieticianRepository.findAll();
    }

    @Override
    public Dietician findDieticianByEmail(String email) {
        return dieticianRepository.findByEmail(email);
    }

	@Override
	public void save(Dietician dietician) {
		 dieticianRepository.save(dietician);
		
	}
}
