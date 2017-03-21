package com.watches.online.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.watches.online.service.CategoryService;

@Controller
public class MainController 
{
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/")
	public String getHome(Model model) 
	{
		model.addAttribute("categoryList", categoryService.listCategory());
		return "index";
	}


}
