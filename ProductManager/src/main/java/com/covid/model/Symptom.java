package com.covid.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="tbl_covid_symptoms")
public class Symptom {
	
	@EmbeddedId
	private SymptomId id;
	
	private String symptomName;

	
	public SymptomId getId() {
		return id;
	}

	public void setId(SymptomId id) {
		this.id = id;
	}

	public String getSymptomName() {
		return symptomName;
	}

	public void setSymptomName(String symptomName) {
		this.symptomName = symptomName;
	}
	
}
