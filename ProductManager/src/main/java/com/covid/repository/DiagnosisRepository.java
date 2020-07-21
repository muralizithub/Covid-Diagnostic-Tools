package com.covid.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.covid.model.DiagnosisModel;

@Repository
public interface DiagnosisRepository extends JpaRepository<DiagnosisModel, Integer> {

}
