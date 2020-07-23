package com.covid.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_covid_diagnosis")
public class DiagnosisModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "diag_id")
    private Integer id;
	
	@Column(name = "age_grp")
	private String ageGroup;
	
	@Column(name="email")
	private String email;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "places_visited")
	private String placesVisited;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "diagnosisModel")
	private Set<Symptom> symptoms;
	
	@OneToMany(cascade = CascadeType.ALL,mappedBy="diagnosisModel")
	private Set<MedicalCondition> conditions;
	
	public DiagnosisModel() {}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public Set<Symptom> getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(Set<Symptom> symptoms) {
		this.symptoms = symptoms;
	}

	public Set<MedicalCondition> getConditions() {
		return conditions;
	}

	public void setConditions(Set<MedicalCondition> conditions) {
		this.conditions = conditions;
	}
}
