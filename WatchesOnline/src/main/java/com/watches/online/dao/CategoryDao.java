package com.watches.online.dao;

import java.util.List;
import com.watches.online.entity.Category;

public interface CategoryDao 
{
	public void addCategory(Category category);
	
	public List<Category> listCategory();
	public String listCategoryByJson();
	
	public Category getCategoryById(int categoryId);
	
	public void deleteCategory(int categoryId);
	
	public Category getCategoryByName(String categoryName);
}


/*	public void addCategory(Category category);
	public void updateCategory(Category categoryId);
	public List<Category> listCategory();
	public Category getCategoryById(int categoryId);
	public void removeCategory(int categoryId);
	public Category getCategoryByName(String categoryName);*/
