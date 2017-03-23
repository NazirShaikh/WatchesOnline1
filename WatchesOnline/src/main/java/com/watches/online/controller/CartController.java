package com.watches.online.controller;

import java.security.Principal;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.watches.online.entity.CartItem;
import com.watches.online.service.CartService;
import com.watches.online.service.ProductService;
import com.watches.online.service.UserDetailsService;

@Controller
public class CartController
{
	@Autowired
	private ProductService productService;
	@Autowired
	private UserDetailsService userDetailsService;
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/addcart-{productId}")
	public String addCart(@PathVariable("productId")int productId,Principal principal,@ModelAttribute()CartItem cartItem)
	{
		String username=principal.getName();
		
		int userId=userDetailsService.getUserDetailsByName(username).getUserId();
		
		cartItem.setUserId(userId);
		cartItem.setCartId(userId);

		String pname = productService.getProductById(productId).getProductName();
		double productPrice = productService.getProductById(productId).getProductPrice();
		cartItem.setProductName(pname);
		cartItem.setProductPrice(productPrice);
		
		cartItem.setProductQuantity(1);
		cartItem.setProductAmount(cartItem.getProductQuantity()*cartItem.getProductPrice());
		
		Date d = new Date();
		cartItem.setDateOfOrdered(d);
		
		cartItem.setFlag("n");
		cartService.addCart(cartItem);
		
		return "CartList";
	}
	
	/*@RequestMapping("/cartList")
	public List<Cart> ListCart()
	{
		return null;
		
	}*/
}