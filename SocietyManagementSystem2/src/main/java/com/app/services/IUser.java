package com.app.services;

import java.util.Optional;

import com.app.pojos.User;

public interface IUser {

	boolean isUserPresent(String email);

	void createUser(User user);

	User getUser(String email);
}
