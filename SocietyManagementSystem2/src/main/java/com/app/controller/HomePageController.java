package com.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.services.UserLoginValidator;

@Controller
public class HomePageController {
	@RequestMapping("/")
	public String serveHomePage(HttpServletRequest request) {
		if(request.getSession().getAttribute("user") != null) {
			int auth = UserLoginValidator.validateLogin(request);
			if(auth != 0) {
				if(auth == 1) {
					return "redirect:/member";
				}
				return "redirect:/admin_page";
			}
		}
		return "/index";
	}
}
