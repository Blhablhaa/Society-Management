package com.app.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.validation.constraints.Email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.app.dao.EventRepository;

import com.app.pojos.Event;
import com.app.pojos.User;
import com.app.services.UserLoginValidator;
@Controller
public class EventController {

	@Autowired
	private EventRepository eventrepo;
	@GetMapping("/event_page")
	public String loginmthd(Model model, HttpServletRequest request) 
	{
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 1 && auth != 2) {
				return "redirect:/";
			}
		
		} else {
			return "redirect:/";
		}
		model.addAttribute("event",new Event());
		
		return "/event_page";
		
	}
	@PostMapping("/event_page")
	public String loginAuth(@ModelAttribute("event") Event event, HttpServletRequest request)
	{
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 1 && auth != 2) {
				return "redirect:/";
			}
		
		} else {
			return "redirect:/";
		}
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		/*
		public Event(String email, String phone, String house, String event_name, String message,
			String time, String date)
		*/
		
		Event newEvent = new Event(user.getEmail(), user.getPhone(), user.getHouse(), 
									event.getEvent_name(), event.getMessage(), 
									event.getTime(), event.getDate());
		eventrepo.save(newEvent);
		return "redirect:/member";
}
	}
