package com.watches.online.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watches.online.dao.SubCategoryDao;
import com.watches.online.entity.SubCategory;
@Repository
public class SubCategoryDaoImpl implements SubCategoryDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addSubCategory(SubCategory subCategory) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(subCategory);
	}
	public List<SubCategory> listSubCategory() 
	{
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<SubCategory> listSubCategory = session.createQuery("from SubCategory").list();
		return listSubCategory;
	}
	@SuppressWarnings("unchecked")
	public SubCategory getSubCategoryByName(String subCategoryName) 
	{
		Session session = sessionFactory.getCurrentSession();
		String str = "from SubCategory where subCategoryName=" + "'" + subCategoryName + "'";
		
		List<SubCategory> subCategoryByName = session.createQuery(str).list();
		return subCategoryByName.get(0);
	}
	@SuppressWarnings("unchecked")
	public SubCategory getSubCategoryById(int subCategoryId) 
	{
		String hql = "from SubCategory where subCategoryId="+subCategoryId;
		List<SubCategory>subCategoryList=sessionFactory.getCurrentSession().createQuery(hql).list();
		//SubCategory subcategory=(SubCategory)session.load(SubCategory.class,new Integer(subcategoryId));
		return subCategoryList.get(0);
	}
	public void deleteSubCategory(int subCategoryId)
	{
		SubCategory sc=new SubCategory();
		sc.setSubCategoryId(subCategoryId);
		sessionFactory.getCurrentSession().delete(sc);
	}
}