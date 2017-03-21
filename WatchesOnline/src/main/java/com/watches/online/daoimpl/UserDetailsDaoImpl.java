package com.watches.online.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.watches.online.dao.UserDetailsDao;
import com.watches.online.entity.Cart;
import com.watches.online.entity.UserDetails;

@Repository
public class UserDetailsDaoImpl implements UserDetailsDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public  void addUserDetails(UserDetails userDetails) 
	{

		Session session = sessionFactory.getCurrentSession();
		
		userDetails.setEnabled(true);
		userDetails.setRole("ROLE_USER");

		session.saveOrUpdate(userDetails);
		
		
		Cart cart = new Cart();
		cart.setCartId(userDetails.getUserId()); 
		cart.setUserId(userDetails.getUserId());
		
		session.saveOrUpdate(cart);
		
		session.saveOrUpdate(userDetails);
		
		
/*		Session session =sessionFactory.getCurrentSession();
		User user=new User();
		user.setUserId(userDetails.getUserId());
		user.setUserFame(userDetails.getFname());
		user.setPassword(userDetails.getPassword());
		session.saveOrUpdate(user);*/
	}

	public List<UserDetails> listUserDetails() 
	{
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = session.createQuery("from UserDetails").list();
		return listUserDetails;
	}

	@SuppressWarnings("unchecked")
	public String listUserDetailsByJson() 
	{
		List<UserDetails> listUserDetailsByJson = sessionFactory.getCurrentSession().createQuery("from UserDetails").list();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(listUserDetailsByJson);
		return list;
	}

	@SuppressWarnings("unchecked")
	public UserDetails getUserDetailsById(int userId) 
	{
		//Session session = this.sessionFactory.getCurrentSession();		
		String hql = "from UserDetails where userId="+userId;
		List<UserDetails> clist = sessionFactory.getCurrentSession().createQuery(hql).list();
		return clist.get(0);
	}

	@SuppressWarnings("unchecked")
	public UserDetails getUserDetailsByName(String username) 
	{
		List<UserDetails> clist = sessionFactory.getCurrentSession().createQuery("from UserDetails where username = " + "'"+username+"'").list();
		return clist.get(0);
	}
}
