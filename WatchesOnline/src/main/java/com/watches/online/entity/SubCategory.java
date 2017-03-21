package com.watches.online.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class SubCategory 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int subCategoryId;
	
	@NotEmpty(message="subCategory Name can not be empty")
	private String subCategoryName;
	@NotEmpty(message="SubCategory Description can not be empty")
	private String subCategoryDescription;
	private int categoryId;
	


	
	public int getSubCategoryId() 
	{
		return subCategoryId;
	}
	public void setSubCategoryId(int subCategoryId) 
	{
		this.subCategoryId = subCategoryId;
	}
	public String getSubCategoryName() 
	{
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) 
	{
		this.subCategoryName = subCategoryName;
	}
	public String getSubCategoryDescription() 
	{
		return subCategoryDescription;
	}
	public void setSubCategoryDescription(String subCategoryDescription) 
	{
		this.subCategoryDescription = subCategoryDescription;
	}
	public int getCategoryId() 
	{
		return categoryId;
	}
	public void setCategoryId(int categoryId) 
	{
		this.categoryId = categoryId;
	}
	@ManyToOne
	@JoinColumn(name="categoryId", updatable=false, insertable=false, nullable=false)
	private Category category;
	public Category getCategory() 
	{
		return category;
	}
	public void setCategory(Category category) 
	{
		this.category = category;
	}
}