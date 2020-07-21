package com.covid.controller;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.covid.model.TreatmentModel;
import com.covid.service.TreatmentManagementService;
@Controller
public class AppController {

	@Autowired
	private TreatmentManagementService service;

	@RequestMapping(value = "/treatment", method = RequestMethod.GET)
	public String viewHomePage(Model model) {
		TreatmentModel data = new TreatmentModel();
		model.addAttribute("data", data);

		return "treatment";
	}

	@RequestMapping(value = "/saveTreatment", method = RequestMethod.POST)
	public String savedata(@RequestParam(name = "pname") String name, @RequestParam(name = "age") Integer age,
			@RequestParam(name = "temp") Double temp, @RequestParam(name = "clinicalFeature") String[] ClinicalFeature,
			@RequestParam(name = "clinicalSeverity") String ClinicalSeverity,
			@RequestParam(name = "orotharyngealSwab") String OrotharungealSwab,
			@RequestParam(name = "nasropharyngealSwab") String NasropharyngealSwab,
			@RequestParam(name = "medicine") String[] Medicine) {
		TreatmentModel tm = new TreatmentModel();
		tm.setName(name);
		tm.setAge(age);
		tm.setTemp(temp);
		tm.setClinicalFeature(Arrays.toString(ClinicalFeature));
		tm.setClinicalSeverity(ClinicalSeverity);
		tm.setOrotharungealSwab(OrotharungealSwab);
		tm.setNasropharyngealSwab(NasropharyngealSwab);
		tm.setMedicine(Arrays.toString(Medicine));

		service.save(tm);
		return "index";
	}

}
