package com.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.LoginRepository;
import com.app.pojos.Login_Info;

@Service
public class LoginService implements ILogin{
	@Autowired
	private LoginRepository logrepo;

	public void saveUser(String email, String password) {
		// TODO Auto-generated method stub
		logrepo.save(new Login_Info(email,password));
		
	}

}
