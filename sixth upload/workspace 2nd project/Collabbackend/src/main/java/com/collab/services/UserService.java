package com.collab.services;

import java.util.List;

import com.collab.model.User;

public interface UserService {
	List<User> getAllUsers();
	User registerUser(User user);

}
