package com.collab.dao;

import java.util.List;

import com.collab.model.User;

public interface UserDao {
	User authenticate(User user);
	void updateUser(User user);
	List<User> getAllUsers();
	User registerUser(User user);
}
