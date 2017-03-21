package com.watches.online.dao;

import java.util.List;

import com.watches.online.entity.SubCategory;

public interface SubCategoryDao 
{
	public void addSubCategory(SubCategory subcategory);

	public List<SubCategory>listSubCategory();
	public SubCategory getSubCategoryById(int subCategoryId);
	public void deleteSubCategory(int subCategoryId);
	public SubCategory getSubCategoryByName(String subCategorytName);
	
}