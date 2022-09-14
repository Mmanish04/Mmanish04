package com.vidyalaya.hobby.services;

import com.vidyalaya.hobby.entities.User;

public interface SecurityService {

	boolean login(String username, String password);
	
	void assignRoleToUser(User user);
}
