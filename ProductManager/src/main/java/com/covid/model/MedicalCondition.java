package com.covid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_medical_condition")
public class MedicalCondition {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="mc_id")
	private Integer mcId;
	
	@Column(name="condition_name")
	private String conditionName;
	
	@ManyToOne
	@JoinColumn(name="diag_id")
	private DiagnosisModel diagnosisModel;

	public Integer getMcId() {
		return mcId;
	}

	public void setMcId(Integer mcId) {
		this.mcId = mcId;
	}

	public String getConditionName() {
		return conditionName;
	}

	public void setConditionName(String conditionName) {
		this.conditionName = conditionName;
	}

	public DiagnosisModel getDiagnosisModel() {
		return diagnosisModel;
	}

	public void setDiagnosisModel(DiagnosisModel diagnosisModel) {
		this.diagnosisModel = diagnosisModel;
	}
}
