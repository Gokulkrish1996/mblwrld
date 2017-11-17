package com.dao;

import java.util.List;

import com.model.User;

public interface UserDAO 
{
	public boolean addUser(User user);
	public List<User> retrieveUser();
	public boolean deleteUser(User user);
	public User getUser(String userName);
	public boolean updateUser(User user);
	
}
