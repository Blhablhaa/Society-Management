package com.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.dao.ComplaintRepository;
import com.app.dao.EventRepository;
import com.app.dao.VisitorRepository;
import com.app.pojos.Complaint;
import com.app.pojos.Event;
import com.app.pojos.Visitor;
import com.app.services.ComplaintService;
import com.app.services.IComplaint;
import com.app.services.UserLoginValidator;

@Controller
@Transactional
public class AdminController {
	@Autowired
	private ComplaintRepository comprepo;
	
	@Autowired
	private VisitorRepository visitrepo;
	
	@Autowired
	private EventRepository eventrepo;
	
	@Autowired 
	private IComplaint complaintService;
	
	@GetMapping("/admin_page")
	public String admincontroller(HttpServletRequest request)
	{
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 1) {
				if(auth == 2) {
					return "redirect:/member";
				}
				return "redirect:/";
			}
		} else {
			return "redirect:/";
		}
		
		return "/admin_page";
	}
		
	@GetMapping("/view_all_complaints_page")
	public String VACpage(Model model, HttpServletRequest request)
	{
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 1) {
				if(auth == 2) {
					return "redirect:/member";
				}
				return "redirect:/";
			}
		} else {
			return "redirect:/";
		}
		
		List<Complaint> complaints = comprepo.findAll();
		if(complaints.size() != 0) {
			model.addAttribute("complaintlist", complaints);
		} 
		return "/view_all_complaints_page";
	}
	
	@GetMapping("/view_all_visitors_page")
	public String VAVpage(Model model, HttpServletRequest request)
	{
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 1) {
				if(auth == 2) {
					return "redirect:/member";
				}
				return "redirect:/";
			}
		} else {
			return "redirect:/";
		}
		List<Visitor> visitors = visitrepo.findAll();
		if(visitors.size() != 0) {
			model.addAttribute("visitorlist",visitrepo.findAll());
		}
		System.out.println(model.getAttribute("visitorlist"));
		return "/view_all_visitors_page";
	}
	
	@GetMapping("/view_all_events_page")
	public String VAEpage(Model model, HttpServletRequest request)
	{
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 1) {
				if(auth == 2) {
					return "redirect:/member";
				}
				return "redirect:/";
			}
		} else {
			return "redirect:/";
		}
		List<Event> events = eventrepo.findAll();
		if(events.size() != 0) {
			model.addAttribute("eventlist",eventrepo.findAll());
		}
		return "/view_all_events_page";
	}
	
	@GetMapping("/view_complaint_page")
	public String VCpage(@RequestParam String cid, Model model, HttpServletRequest request) {
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 1) {
				if(auth == 2) {
					return "redirect:/member";
				}
				return "redirect:/";
			}
		} else {
			return "redirect:/";
		}
		
		try {
			Complaint complaint = comprepo.getById(Integer.parseInt(cid));
			model.addAttribute("complaint", complaint);
			
			System.out.println(model.getAttribute("complaint"));
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
			model.addAttribute("complaint", null);
		} 
		return "/view_complaint_page";
	}
}
