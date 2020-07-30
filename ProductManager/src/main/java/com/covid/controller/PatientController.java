package com.covid.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covid.service.PatientService;

@Controller
public class PatientController {
	
	@Autowired
	private PatientService service;

	@RequestMapping(value = "/patient", method = RequestMethod.GET)
	public String viewAddPatient(Model model) {
		return "patient";
	}
	
	
	@RequestMapping(value = "/addPatient", method = RequestMethod.GET)
	public String savePatient(Model model) {
		return "patient";
	}
	

}
