package com.watches.online.dao;

import java.util.List;

import com.watches.online.entity.Cart;
import com.watches.online.entity.CartItem;

public interface CartDao 
{
	public void addCart(CartItem cartItem);
	public List<Cart> ListCart();
}
