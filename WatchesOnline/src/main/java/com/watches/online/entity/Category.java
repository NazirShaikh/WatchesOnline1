package com.watches.online.entity;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class Category
{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int categoryId;
	
	@NotEmpty(message="Category Name can not be Empty")
	@Expose
	private String categoryName;
	@NotEmpty(message="Category Description can not be Empty")
	@Expose
	private String categoryDescription;
	
	@Expose
	@OneToMany(mappedBy="category", fetch=FetchType.EAGER)
	private Set<SubCategory> subCategory;
	
	public Set<SubCategory> getSubCategory() 
	{
		return subCategory;
	}
	public void setSubCategory(Set<SubCategory> subCategory) 
	{
		this.subCategory = subCategory;
	}
	
	public int getCategoryId() 
	{
		return categoryId;
	}
	public void setCategoryId(int categoryId) 
	{
		this.categoryId = categoryId;
	}
	public String getCategoryName() 
	{
		return categoryName;
	}
	public void setCategoryName(String categoryName) 
	
	{
		this.categoryName = categoryName;
	}
	public String getCategoryDescription() 
	{
		return categoryDescription;
	}
	public void setCategoryDescription(String categoryDescription) 
	{
		this.categoryDescription = categoryDescription;
	}
}