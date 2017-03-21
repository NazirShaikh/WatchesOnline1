package com.watches.online.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.watches.online.entity.UserDetails;
import com.watches.online.service.UserDetailsService;

@Controller
public class UserDetailsController 
{
	@Autowired
	UserDetailsService userDetailsService;
	

	@RequestMapping(value = "/registration")
	   public String getRegistration(Model model) 
	{
		
		model.addAttribute("userDetails", new UserDetails());
		return "Registration";
	}
	
	@RequestMapping(value = "/addUserDetails")
	public String addUserDetails(@ModelAttribute("userDetails")UserDetails userDetails)
	{
      userDetailsService.addUserDetails(userDetails);
		return "redirect:/login";
	}
	

	@RequestMapping("/login")
	public String getLogin(Model model, Principal principal )
	{
		return "Login";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authentication!=null)
		{
			new SecurityContextLogoutHandler().logout(request,response,authentication);
		}
		return "Login";
	}

}