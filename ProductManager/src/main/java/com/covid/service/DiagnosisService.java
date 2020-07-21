package com.covid.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.covid.model.DiagnosisModel;
import com.covid.repository.DiagnosisRepository;

@Service
@Transactional
public class DiagnosisService {
	
	@Autowired
	private DiagnosisRepository repo;
	
	public void save(DiagnosisModel data) {
		repo.save(data);
	} 

}
