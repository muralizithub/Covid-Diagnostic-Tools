package com.covid.repository;

import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;

import com.covid.model.PatientModel;

public interface PatientRepository extends JpaRepositoryImplementation<PatientModel, Integer> {

}
