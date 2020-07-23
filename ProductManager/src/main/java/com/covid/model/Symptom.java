package com.covid.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="tbl_covid_symptoms")
public class Symptom implements Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="sym_id")
	private Integer sympId;
	
	@Column(name="sym_name")
	private String symptomName;
	
	@ManyToOne
	@JoinColumn(name="diag_id")
	private DiagnosisModel diagnosisModel;

	
	public Integer getSympId() {
		return sympId;
	}

	public void setSympId(Integer id) {
		this.sympId = id;
	}

	public String getSymptomName() {
		return symptomName;
	}

	public void setSymptomName(String symptomName) {
		this.symptomName = symptomName;
	}

	public DiagnosisModel getDiagnosisModel() {
		return diagnosisModel;
	}

	public void setDiagnosisModel(DiagnosisModel diagnosisModel) {
		this.diagnosisModel = diagnosisModel;
	}
	
}
