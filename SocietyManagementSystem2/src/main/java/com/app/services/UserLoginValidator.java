package com.app.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.app.pojos.Role;
import com.app.pojos.User;

@Service
public class UserLoginValidator {
	public static int validateLogin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user.getRole() == Role.ADMIN) {
			return 1;
		} else if(user.getRole() == Role.MEMBER) {
			return 2;
		}
		return 0;
	}
}
