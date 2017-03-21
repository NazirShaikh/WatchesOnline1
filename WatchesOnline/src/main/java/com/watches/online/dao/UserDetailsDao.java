package com.watches.online.dao;

import java.util.List;

import com.watches.online.entity.UserDetails;

public interface UserDetailsDao
{
	public void addUserDetails(UserDetails userDetails);
	
	public List<UserDetails> listUserDetails();
	
	public String listUserDetailsByJson();
	
	public UserDetails getUserDetailsById(int userId);
	
	public UserDetails getUserDetailsByName(String username);
}
