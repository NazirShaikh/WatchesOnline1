package com.watches.online.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.watches.online.entity.Category;
import com.watches.online.service.CategoryService;
@Controller
public class CategoryController 
{
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/category")
	public String getCategory(Model model) 
	{

		model.addAttribute("category",new Category());
		model.addAttribute("categoryList",categoryService.listCategory());
		model.addAttribute("categoryListByJson", categoryService.listCategoryByJson());

		model.addAttribute("btnLabel","Add Category");
		return "CategoryForm";
	}
	@RequestMapping("/addcategory")
	public String addCategory(@Valid@ModelAttribute("category") Category category, BindingResult result, Model model) 
	{	
		if(result.hasErrors())
		{
			model.addAttribute("categoryListByJson", categoryService.listCategoryByJson());
			model.addAttribute("btnLabel","Retry");
			return"CategoryForm";
		}
		categoryService.addCategory(category);
		return "redirect:/category";
	}
	
	@RequestMapping(value="/editcategory-{categoryId}", method= RequestMethod.GET)
	public String editCategory(@PathVariable("categoryId") int categoryId, Model model)
	{
		Category category = categoryService.getCategoryById(categoryId);
		
		System.out.println("id is:"+ category.getCategoryId());
		model.addAttribute("category", category);
		model.addAttribute("categoryList",categoryService.listCategory());
		return "CategoryForm";
	}
	
	@RequestMapping("/deletecategory-{categoryId}")
	public String deleteCatgeory(@PathVariable("categoryId") int categoryId)
	{
		categoryService.deleteCategory(categoryId);
		return "redirect:/category";
	}

}