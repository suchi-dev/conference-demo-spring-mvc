package com.sample.springmvc.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sample.springmvc.model.Registration;

@Controller
public class RegistrationController {

	@GetMapping("registration")
	public String getRegistration(@ModelAttribute("registration") Registration registration) {
		return "registration";

	}

	@PostMapping("registration")
	public String addRegistration(@Valid @ModelAttribute("registration") Registration registration, BindingResult result) {
		System.out.println("Registration : " + registration.getName());
		if(result.hasErrors()) {
			System.out.println("There were errors:");
			return "registration";
		}
		
		return "redirect:registration";

	}

}