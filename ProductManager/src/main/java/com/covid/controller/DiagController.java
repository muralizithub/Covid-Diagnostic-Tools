package com.covid.controller;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.covid.model.DiagnosisModel;
import com.covid.model.MedicalCondition;
import com.covid.model.Symptom;
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
	public String saveDiagnosis(Model model,@RequestParam Map<String,String> allParams,
			@RequestParam("symptoms") String symptoms[],
			@RequestParam("mc") String medicalCondition[]) {
		
		DiagnosisModel diagData = new DiagnosisModel();
		diagData.setAgeGroup(allParams.get("ageGrp"));
		diagData.setGender(allParams.get("gender"));
		diagData.setPlacesVisited(allParams.get("placeswent"));
		diagData.setEmail(allParams.get("email"));	
		
		Set<Symptom> symptomSet = new HashSet<>();
		for(int i =0; i<symptoms.length; i++) {
			Symptom sym = new Symptom();
			sym.setSympId(null);
			sym.setSymptomName(symptoms[i]);
			sym.setDiagnosisModel(diagData);
			symptomSet.add(sym);
		}
		diagData.setSymptoms(symptomSet);
		
		Set<MedicalCondition> medicalConditionSet = new HashSet<>();
		for(int i =0; i<medicalCondition.length; i++) {
			MedicalCondition condition = new MedicalCondition();
			condition.setMcId(null);
			condition.setConditionName(medicalCondition[i]);
			condition.setDiagnosisModel(diagData);
			medicalConditionSet.add(condition);
		}
		
		diagData.setConditions(medicalConditionSet);
		
		if(service.save(diagData) != null) {
			model.addAttribute("message","Diagnosis saved successfully");
		}else {
			model.addAttribute("error","Diagnosis saved failed");
		}
		

		return "covid_diag";
	}

}
