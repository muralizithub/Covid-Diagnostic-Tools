package com.covid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_treatment_model")
public class TreatmentModel {

	@Id
    private Integer id;
   	private String name;
    private Integer age;
    private Double temp;
    @Column(name = "clinical_feature")
    private String clinicalFeature;
    @Column(name = "clinical_Severity")
    private String clinicalSeverity;
    @Column(name = "Orotharungeal_swab")
    private String OrotharungealSwab;
    @Column(name = "nasropharyngeal_swab")
    private String nasropharyngealSwab;
    private String medicine;
    
    public TreatmentModel() {}
    
    @Column(name = "trt_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Double getTemp() {
		return temp;
	}
	public void setTemp(Double temp) {
		this.temp = temp;
	}
	public String getClinicalFeature() {
		return clinicalFeature;
	}
	public void setClinicalFeature(String clinicalFeature) {
		this.clinicalFeature = clinicalFeature;
	}
	public String getClinicalSeverity() {
		return clinicalSeverity;
	}
	public void setClinicalSeverity(String clinicalSeverity) {
		this.clinicalSeverity = clinicalSeverity;
	}
	public String getOrotharungealSwab() {
		return OrotharungealSwab;
	}
	public void setOrotharungealSwab(String orotharungealSwab) {
		OrotharungealSwab = orotharungealSwab;
	}
	public String getNasropharyngealSwab() {
		return nasropharyngealSwab;
	}
	public void setNasropharyngealSwab(String nasropharyngealSwab) {
		this.nasropharyngealSwab = nasropharyngealSwab;
	}
	public String getMedicine() {
		return medicine;
	}
	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}
}
