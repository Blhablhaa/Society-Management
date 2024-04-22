package com.app.services;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.HouseRepository;
import com.app.dao.UserRepository;
import com.app.pojos.House;
import com.app.pojos.Role;
import com.app.pojos.User;

@Service
public class UserServices implements IUser{
	@Autowired
	private UserRepository userrepo;
	
	public boolean isUserPresent(String email) {
		if(!userrepo.findById(email).isEmpty())
			return true;
		return false;
	}

	public void createUser(User user) {
		userrepo.save(user);
	}
	
	@Override
	@Transactional
	public User getUser(String email) {
		User user = userrepo.getById(email);
		user.getPassword();
		return user;
	}
	

		
	
	
	
}
