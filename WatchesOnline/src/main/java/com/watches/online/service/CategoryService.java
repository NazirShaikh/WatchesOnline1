package com.watches.online.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.watches.online.daoimpl.CategoryDaoImpl;
import com.watches.online.entity.Category;
@Service
@Transactional
public class CategoryService
{
	@Autowired
	private CategoryDaoImpl categoryDaoImpl;
	
	public void addCategory(Category category) 
	{
		this.categoryDaoImpl.addCategory(category);
	}
	public List<Category> listCategory() {
		return this.categoryDaoImpl.listCategory();
	}
	public String listCategoryByJson()
	{
		return this.categoryDaoImpl.listCategoryByJson();
	}
	public Category getCategoryById(int categoryId)
	{
		return this.categoryDaoImpl.getCategoryById(categoryId);
	}

	public Category getCategoryByName(String categoryName) {
		return this.categoryDaoImpl.getCategoryByName(categoryName);
	}
	public Category editCategoryById(int categoryId)
	{
		return this.categoryDaoImpl.getCategoryById(categoryId);
	}
	public void deleteCategory(int categoryId)
	{
		categoryDaoImpl.deleteCategory(categoryId);
	}
}


/*	@Autowired
	SessionFactory sessionFactory;
	private CategoryDaoImpl categoryDaoImpl;
	@Autowired
	public void setCategoryDao(CategoryDaoImpl categoryDaoImpl) 
	{
		this.categoryDaoImpl = categoryDaoImpl;
	}
	@Transactional
	public void addCategory(Category category) 
	{
		this.categoryDaoImpl.addCategory(category);
	}
	@Transactional
	public void updateCategory(Category categoryId) 
	{
		this.categoryDaoImpl.updateCategory(categoryId);
	}
	@Transactional
	public List<Category> listCategory() 
	{
		return this.categoryDaoImpl.listCategory();
	}
	
	@Transactional
	public Category getCategoryById(int categoryId) 
	{
		return this.categoryDaoImpl.getCategoryById(categoryId);
	}
	@Transactional
	public void removeCategory(int categoryId) 
	{
		this.categoryDaoImpl.removeCategory(categoryId);
	}
	@Transactional
	public Category getCategoryByName(String categoryName)
	{
		return categoryDaoImpl.getCategoryByName(categoryName);
	}
}*/