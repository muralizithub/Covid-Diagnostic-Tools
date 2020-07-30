package com.covid.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.covid.model.PatientModel;
import com.covid.repository.PatientRepository;

@Service
@Transactional
public class PatientService {
	
	@Autowired
	private PatientRepository repo;
	
	public PatientModel saveOrUpdatePatient(PatientModel data) {
		return repo.save(data);
	}
	
	public void deletePatient(Integer id) {
		repo.deleteById(id);
	}

}
