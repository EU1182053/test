package com.model;

import com.pojo.User;

public interface UserDao {
	
	public boolean register(User user);
	public boolean login(User user);
	public boolean changePassword(User user);
	public boolean updateProfile(User user);
	public String getUserByUsername(User user);
	public boolean deleteUserByUsername(User user);
	
	
}
