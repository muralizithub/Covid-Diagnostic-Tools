package com.covid.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_covid_diagnosis")
public class DiagnosisModel {
	
	@Id
    private Integer id;
	
	@Column(name = "age_grp")
	private String ageGroup;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "places_visited")
	private String placesVisited;
	
	//private List<Symptom> symptoms;
	
	//private List<MedicalCondition> conditions;
	
	public DiagnosisModel() {}

	@Column(name = "diag_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAgeGroup() {
		return ageGroup;
	}

	public void setAgeGroup(String ageGroup) {
		this.ageGroup = ageGroup;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPlacesVisited() {
		return placesVisited;
	}

	public void setPlacesVisited(String placesVisited) {
		this.placesVisited = placesVisited;
	}

	/*
	 * public List<Symptom> getSymptoms() { return symptoms; }
	 * 
	 * public void setSymptoms(List<Symptom> symptoms) { this.symptoms = symptoms; }
	 * 
	 * public List<MedicalCondition> getConditions() { return conditions; }
	 * 
	 * public void setConditions(List<MedicalCondition> conditions) {
	 * this.conditions = conditions; }
	 */
}
