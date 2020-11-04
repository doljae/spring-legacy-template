package com.ssafy.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssafy.myapp.domain.PatientDto;
import com.ssafy.myapp.service.PatientService;


@Controller
public class PatientController {
	
	@Autowired
	PatientService service;
	
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String home(Model model) {		
		
		model.addAttribute("list", service.getList());
		
		return "list";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String home(Model model, String pno) {		
		
		model.addAttribute("p", service.getPatient(pno));
		
		return "detail";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String regist() {	
		
		return "regist";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String regist2(PatientDto dto) {	
		service.register(dto);
		return "redirect:/list";
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(String[] pnos) {	
		for(String pno: pnos) {
			service.remove(pno);
		}
		return "redirect:/list";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {			
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login2(String username, HttpSession session) {	
		session.setAttribute("user", username);
		return "redirect:/list";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout( HttpSession session) {	
		session.setAttribute("user", null);
		return "redirect:/list";
	}
	
}
