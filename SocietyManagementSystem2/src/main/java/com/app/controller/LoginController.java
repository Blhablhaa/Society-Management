package com.app.controller;

import java.net.HttpCookie;
import java.net.http.HttpResponse;
import java.util.Optional;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.dao.LoginRepository;
import com.app.dao.UserRepository;
import com.app.pojos.Login_Info;
import com.app.pojos.Role;
import com.app.pojos.User;
import com.app.services.ILogin;
import com.app.services.IUser;
//import com.app.services.IloginService;
import com.app.services.LoginService;
//import com.app.services.LoginService;
//import com.app.services.IuserService;


@Controller
public class LoginController {
	@Autowired
	private ILogin loginservice;
	
	@Autowired
	private IUser userServices;
	
	@Autowired
	private  UserRepository userrepo;
	
	@GetMapping("/login")
	public String serveLoginPage() 
	{
		return "/login_form";
	}
	
	@PostMapping("/login")
	public String loginAuth(@RequestParam String email,
			@RequestParam String password,
			HttpServletRequest request)
	{
		try
		{
			User user = userServices.getUser(email);
			if(user.getPassword().equals(password)) {
				user.setPassword("");
				System.out.println(user);
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				System.out.println(">>>>>>user session :- "+session.getAttribute("user"));
				loginservice.saveUser(email,password);
				if(user.getRole().equals(Role.ADMIN))
					return "redirect:/admin_page";
				return "redirect:/member";
			}
			System.out.println("wrong password");
			return "redirect:/login_form";
		}
		catch(Exception e)
		{
			System.out.println(e);
			return "/login_form";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		return "redirect:/";
	}

}
