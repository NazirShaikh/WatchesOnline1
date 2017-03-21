package com.watches.online.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.watches.online.daoimpl.UserDetailsDaoImpl;
import com.watches.online.entity.UserDetails;

@Service
@Transactional
public class UserDetailsService 
{
	@Autowired
	private UserDetailsDaoImpl userDetailsDaoImpl;
	
	public void addUserDetails(UserDetails userDetails)
	{
		userDetailsDaoImpl.addUserDetails(userDetails);
	}
	
	public List<UserDetails> listUserDetails() {
		return this.userDetailsDaoImpl.listUserDetails();
	}
	public String listUserDetailsByJson()
	{
		return this.userDetailsDaoImpl.listUserDetailsByJson();
	}
	public UserDetails getUserDetailsById(int userId)
	{
		return this.userDetailsDaoImpl.getUserDetailsById(userId);
	}

	public UserDetails getUserDetailsByName(String username) 
	{
		return this.userDetailsDaoImpl.getUserDetailsByName(username);
	}
}
