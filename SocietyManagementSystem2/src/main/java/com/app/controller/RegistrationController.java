package com.app.controller;
import com.app.dao.HouseRepository;

import com.app.dao.UserRepository;
import com.app.pojos.Block;
import com.app.pojos.House;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.pojos.*;

import com.app.services.HouseService;
import com.app.services.IHouse;
import com.app.services.IUser;
import com.app.services.UserServices;

import lombok.extern.log4j.Log4j;

@Controller
public class RegistrationController {
	@Autowired
	private IUser userservice;
	
	@Autowired
	private IHouse houseservice;
	
	
	@GetMapping("/register")
	public String registerForm()
	{
		
		System.out.println("getting registation form");
		return "/registration_form";
	}
	
	@PostMapping("/register")
	public String registerUser(@RequestParam String email,
			@RequestParam String password,@RequestParam String name,
			@RequestParam String house,@RequestParam String phone,
			@RequestParam String block,@RequestParam String role )
	{
		User newUser = new User(email,phone,name,password,house,Role.valueOf(role));
		House newHouse = new House(house, Block.valueOf(block),name,phone);
		
		if(userservice.isUserPresent(email))
			return "/registration_form";
			
		
		userservice.createUser(newUser);
		houseservice.createHouse(newHouse);
		
		return "redirect:/";
	}
	
	@GetMapping("/success")
	public String successpage()
	{
		return "/success";
	}
	
}