package com.sample.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.sample.springmvc.model.Registration;

@Controller
public class RegistrationController {


	@GetMapping("registration")
	public String getRegistration(@ModelAttribute("registration") Registration registration) {
		System.out.println("Registered : "+registration.getName());
		return "registration";
	}
}
