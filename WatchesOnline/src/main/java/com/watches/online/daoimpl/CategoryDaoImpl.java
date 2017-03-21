package com.watches.online.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.watches.online.dao.CategoryDao;
import com.watches.online.entity.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCategory(Category category) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}
	@SuppressWarnings("unchecked")
	public List<Category> listCategory() 
	{
		List<Category> CategoryList = ( sessionFactory.getCurrentSession().createQuery("from Category")).list();
		return CategoryList;
	}
	
	@SuppressWarnings("unchecked")
	public String listCategoryByJson() 
	{
		List<Category> listCategoryByJson = sessionFactory.getCurrentSession().createQuery("from Category").list();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(listCategoryByJson);
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public Category getCategoryById(int categoryId) 
	{
		//Session session = this.sessionFactory.getCurrentSession();		
				String hql = "from Category where categoryId="+categoryId;
				List<Category> clist = sessionFactory.getCurrentSession().createQuery(hql).list();
				return clist.get(0);
	}

	public void deleteCategory(int categoryId) 
	{
		Category c=new Category();
		c.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(c);
		
	}
	@SuppressWarnings("unchecked")
	public Category getCategoryByName(String categoryName) 
	{
		
		List<Category> clist = sessionFactory.getCurrentSession().createQuery("from Category where categoryName = " + "'"+categoryName+"'").list();
		return clist.get(0);
	}
}



/*	@Autowired
	private SessionFactory sessionFactory;
	public void addCategory(Category category) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}
	@SuppressWarnings("unchecked")
	public List<Category> listCategory() 
	{
		List<Category> CategoryList = ( sessionFactory.getCurrentSession().createQuery("from Category")).list();
		return CategoryList;
	}
    public void removeCategory(int categoryId) 
	{
		Category category = sessionFactory.getCurrentSession().load(Category.class, new Integer(categoryId));
		if(null != category)
		{
			sessionFactory.getCurrentSession().delete(category);
		}
	}
	@SuppressWarnings("unchecked")
	public Category getCategoryByname(String categoryName) 
	{
		List<Category> clist = sessionFactory.getCurrentSession().createQuery("from Category where categoryName = " + "'"+categoryName+"'").list();
		return clist.get(0);
	}
	@SuppressWarnings("unchecked")
	public Category getCategoryById(int categoryId) 
	{
		//Session session = this.sessionFactory.getCurrentSession();		
		String hql = "from Category where categoryId="+categoryId;
		List<Category> clist = sessionFactory.getCurrentSession().createQuery(hql).list();
		return clist.get(0);
	}
	public void deleteCategory(int categoryId) 
	{
		Category c=new Category();
		c.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(c);
	}*/

	

/*	@Autowired
	private SessionFactory sessionFactory;
	public void setsessionFactory(SessionFactory sf)
	{
		this.sessionFactory = sf;
	}
	public void addCategory(Category category) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(category);
	}
	
	public List<Category> listCategory() 
	{
		Session session = this.sessionFactory.getCurrentSession();
		List<Category> listCategory = session.createQuery("from Category").list();
		return listCategory;
	}
        		
	public void updateCategory(Category categoryId) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.update(categoryId);
	}
	public Category getCategoryById(int categoryId) 
	{
		Session session = this.sessionFactory.getCurrentSession();		
		Category category = (Category) session.load(Category.class, new Integer(categoryId));
		return category;
	}
	public void removeCategory(int categoryId) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		Category category = (Category) session.load(Category.class, new Integer(categoryId));
		if(null != category)
		{
			session.delete(category);
		}
	}
	public Category getCategoryByName(String categoryName) 
	{
		Session session = sessionFactory.getCurrentSession();
		String str = "from Category where categoryName = "+"'"+categoryName+"'";
		List<Category> categoryByName= session.createQuery(str).list();
		return categoryByName.get(0);
	}

}*/