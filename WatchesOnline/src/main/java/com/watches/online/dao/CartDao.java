package com.watches.online.dao;

import java.util.List;

import com.watches.online.entity.Cart;

public interface CartDao 
{
	public void addCart(Cart cart);
	public List<Cart> getCartList(int userId) ;
	public void deleteCartById(int cartId);
}
