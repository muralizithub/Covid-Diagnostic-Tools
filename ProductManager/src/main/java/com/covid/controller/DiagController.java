package com.covid.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covid.model.DiagnosisModel;
import com.covid.service.DiagnosisService;


@Controller
public class DiagController {
	
	@Autowired
	private DiagnosisService service;

	@RequestMapping(value = "/diagnosis", method = RequestMethod.GET)
	public String viewDiagnosis(Model model) {
		return "covid_diag";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String predictiveMgmt(Model model) {
		return "predictiveMgmt";
	}
	
	@RequestMapping(value = "/diagnosisMethod", method = RequestMethod.GET)
	public String viewDiagnosisMethod(Model model) {
		return "covid_diag_methods";
	}
	
	@RequestMapping(value = "/saveDiagnosis", method = RequestMethod.POST)
	public String saveDiagnosis(Model model) {
		DiagnosisModel data = new DiagnosisModel();
		model.addAttribute("data", data);

		return "covid_diag";
	}

}
