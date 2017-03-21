package com.watches.online.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.watches.online.daoimpl.SubCategoryDaoImpl;
import com.watches.online.entity.SubCategory;
@Service
@Transactional
public class SubCategoryService
{
	@Autowired
	private SubCategoryDaoImpl subCategoryDaoImpl;
	
	public void addSubCategory(SubCategory subCategory)
	{
		subCategoryDaoImpl.addSubCategory(subCategory);
	}
	public List<SubCategory> listSubCategory()
	{
		return subCategoryDaoImpl.listSubCategory();
	}
	public SubCategory getSubCategoryById(int subCategoryId)
	{
		return subCategoryDaoImpl.getSubCategoryById(subCategoryId);
	}
	public SubCategory getSubCategoryByName(String subCategoryName)
	{
		return subCategoryDaoImpl.getSubCategoryByName(subCategoryName);
	}
	public SubCategory editSubCategoryById(int subCategoryId)
	{
		return subCategoryDaoImpl.getSubCategoryById(subCategoryId);
	}
	public void deleteSubCategory(int subCategoryId)
	{
		subCategoryDaoImpl.deleteSubCategory(subCategoryId);
	}
}