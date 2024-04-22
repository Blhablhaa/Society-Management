package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.app.dao.VisitorRepository;
import com.app.pojos.Visitor;
@Controller
public class VisitorController {
	
	@Autowired
	private VisitorRepository visitRepo; 
	
	@GetMapping("/visitor")
	public String serveVisitorPage(Model model) {
		model.addAttribute("visitor", new Visitor());
		return "/visitor_registration";
	}
	
	@PostMapping("/visitor")
	public String registerVisitor(@ModelAttribute("visitor") Visitor visitor) {
		visitRepo.save(visitor);
		return "redirect:/";
	}
}
