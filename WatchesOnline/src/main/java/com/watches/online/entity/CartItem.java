package com.watches.online.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CartItem 
{
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int cartItemId;
		
		private int productId;
		
		private String productName;
		
		private String productDescription;
		
		private int productQuantity;
		
		private double productPrice;
		
		private int userId;
		
		private int cartId;
		private boolean flag;
		
		@ManyToOne
		@JoinColumn(name="productId",updatable=false,insertable=false,nullable=false)
		private Product product;
		@ManyToOne
		@JoinColumn(name="userId",updatable=false,insertable=false,nullable=false)
		private UserDetails userDetails;
		@ManyToOne
		@JoinColumn(name="cartId",updatable=false,insertable=false,nullable=false)
		private Cart cart;
		
		
		public int getCartItemId() {
			return cartItemId;
		}
		public void setCartItemId(int cartItemId) {
			this.cartItemId = cartItemId;
		}
		public int getProductId() {
			return productId;
		}
		public void setProductId(int productId) {
			this.productId = productId;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public String getProductDescription() {
			return productDescription;
		}
		public void setProductDescription(String productDescription) {
			this.productDescription = productDescription;
		}
		public int getProductQuantity() {
			return productQuantity;
		}
		public void setProductQuantity(int productQuantity) {
			this.productQuantity = productQuantity;
		}
		public double getProductPrice() {
			return productPrice;
		}
		public void setProductPrice(double productPrice) {
			this.productPrice = productPrice;
		}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public int getCartId() {
			return cartId;
		}
		public void setCartId(int cartId) {
			this.cartId = cartId;
		}
		public boolean isFlag() {
			return flag;
		}
		public void setFlag(boolean flag) {
			this.flag = flag;
		}
		public Product getProduct() {
			return product;
		}
		public void setProduct(Product product) {
			this.product = product;
		}
		public UserDetails getUserDetails() {
			return userDetails;
		}
		public void setUserDetails(UserDetails userDetails) {
			this.userDetails = userDetails;
		}
		public Cart getCart() {
			return cart;
		}
		public void setCart(Cart cart) {
			this.cart = cart;
		}
		
		
}