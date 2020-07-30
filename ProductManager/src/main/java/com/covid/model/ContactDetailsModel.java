package com.covid.model;

import java.io.Serializable;

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
@Table(name="tbl_contact_details")
public class ContactDetailsModel implements Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cont_id")
	private int contactId;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phone_no")
	private String phoneHome;
	
	@Column(name="mobile_no")
	private String phoneMobile;
	
	@OneToOne(mappedBy="contactDetails")
	private PatientModel patient;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="addr_id",referencedColumnName = "address_id")
	private Address address;

}
