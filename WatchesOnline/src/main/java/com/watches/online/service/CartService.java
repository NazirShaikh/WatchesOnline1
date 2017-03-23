package com.watches.online.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.watches.online.daoimpl.CartDaoImpl;
import com.watches.online.entity.Cart;
import com.watches.online.entity.CartItem;

@Service
@Transactional
public class CartService 
{
	@Autowired
	private CartDaoImpl cartDaoImpl;
	
	public void addCart(CartItem cartItem) 
	{
		this.cartDaoImpl.addCart(cartItem);
	}
	public List<Cart> listCart() {
		return this.cartDaoImpl.ListCart();
	}

}
