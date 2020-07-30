package com.covid.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="tbl_patient")
public class PatientModel implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="patient_id")
	private int patientId;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="age")
	private int age;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="martialStatus")
	private String martialStatus;
	
	@Column(name="ward")
	private String ward;
	
	@Column(name="roomNo")
	private String roomNo;
	
	@Column(name="admitted_date")
	private Date dateAdmitted;
	
	@Column(name="discharged_date")
	private Date dateDischarged;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="contact_id",referencedColumnName = "cont_id")
	private ContactDetailsModel contactDetails;

}
