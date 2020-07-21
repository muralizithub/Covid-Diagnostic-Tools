package com.covid.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.covid.model.TreatmentModel;


public interface TreatmentManagementRepository extends JpaRepository<TreatmentModel, Integer> {

}
