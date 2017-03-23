package com.watches.online.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watches.online.dao.CartDao;
import com.watches.online.entity.Cart;
import com.watches.online.entity.CartItem;

@Repository
public class CartDaoImpl implements CartDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCart(CartItem cartItem) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
		
	}

	public List<Cart> ListCart() {
		List<Cart> CartList = ( sessionFactory.getCurrentSession().createQuery("from Cart")).list();
		return CartList;
	}


}
