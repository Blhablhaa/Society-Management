package com.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.app.dao.ComplaintRepository;
import com.app.pojos.Complaint;
import com.app.pojos.Event;
import com.app.pojos.User;
import com.app.services.UserLoginValidator;
@Controller
public class MemberController {
	
	
	@Autowired
	private ComplaintRepository complaintRepo;
	
	@GetMapping("/member")
	public String  memberpage(Model model,User user, HttpServletRequest request)
	{
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 2) {
				if(auth == 1) {
					return "redirect:/admin_page";
				}
				return "redirect:/";
			}
		} else {
			return "redirect:/";
		}
		
		return "/member_page";
	}
	
	@GetMapping("/complaint")
	public String complaintPage(Model model, HttpServletRequest request) {
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 2) {
				if(auth == 1) {
					return "redirect:/admin_page";
				}
				return "redirect:/";
			}
		}else {
			return "redirect:/";
		}
		Complaint complaint = new Complaint();
		model.addAttribute("complaint", complaint);
		return "/complaint_form";
	}
	
	@PostMapping("/complaint")
	public String registerComplaint(@ModelAttribute("complaint") Complaint complaint, HttpServletRequest request) {
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 2) {
				if(auth == 1) {
					return "redirect:/admin_page";
				}
				return "redirect:/";
			}
		} else {
			return "redirect:/";
		}
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		complaint.setEmail(user.getEmail());
		complaint.setName(user.getName());
		complaint.setPhone(user.getPhone());
		System.out.println(">>>>>> " + user.getHouse());
		complaint.setHouse("A 462");
		System.out.println(complaint);
		complaintRepo.save(complaint);
		return "redirect:/member";
	}
}
