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
import com.watches.online.entity.SubCategory;
import com.watches.online.service.CategoryService;
import com.watches.online.service.SubCategoryService;

@Controller
public class SubCategoryController 
{
	@Autowired
	private SubCategoryService subCategoryService;

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/subcategory")
	public String getSubCategory(Model model) 
	{
		model.addAttribute("subCategory",new SubCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.listCategory());
		model.addAttribute("subCategoryList",subCategoryService.listSubCategory());
		return "SubCategoryForm";
	}
	
	@RequestMapping("/addsubcategory")
	public String addSubCatgory(Model model, @Valid@ModelAttribute("subCategory") SubCategory subCategory, BindingResult result) 
	{
		if(result.hasErrors())
		{
			model.addAttribute("categoryList", categoryService.listCategory());
			return "SubCategoryForm";
		}
		subCategoryService.addSubCategory(subCategory);
		return "redirect:/subcategory";
	}
	@RequestMapping(value="/editsubcategory-{subCategoryId}", method= RequestMethod.GET)
	public String editSubCategory(@PathVariable("subCategoryId") int subCategoryId,Model model)
	{
		SubCategory subcategory=subCategoryService.getSubCategoryById(subCategoryId);
		System.out.println("Id is:"+ subcategory.getSubCategoryId());
		/*System.out.println("Name is:"+subcategory.getSubCategoryName());
		session.setAttribute("subCategoryId", subcategory.getSubCategoryId());*/
		model.addAttribute("subCategory", subcategory);
		model.addAttribute("subCategoryList",subCategoryService.listSubCategory());
		model.addAttribute("categoryList",categoryService.listCategory());
		return"SubCategoryForm";
	}
	@RequestMapping("/deletesubcategory-{subCategoryId}")
	public String deleteSubCategory(@PathVariable("subCategoryId") int subCategoryId)
	{
		subCategoryService.deleteSubCategory(subCategoryId);
		return"redirect:/subcategory";
	}
}