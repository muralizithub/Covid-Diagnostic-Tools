package com.covid.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.covid.model.TreatmentModel;
import com.covid.repository.TreatmentManagementRepository;

@Service
@Transactional
public class TreatmentManagementService {

	@Autowired
	private TreatmentManagementRepository repo;

	public void save(TreatmentModel data) {
		repo.save(data);
	}

}
