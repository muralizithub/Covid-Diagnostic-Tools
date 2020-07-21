package com.covid.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_medical_condition")
public class MedicalCondition {

	@EmbeddedId
	private MedicalConditionId id;
	
	private String conditionName;

	public MedicalConditionId getId() {
		return id;
	}

	public void setId(MedicalConditionId id) {
		this.id = id;
	}

	public String getConditionName() {
		return conditionName;
	}

	public void setConditionName(String conditionName) {
		this.conditionName = conditionName;
	}
}
