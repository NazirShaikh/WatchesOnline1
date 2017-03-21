package com.watches.online.dao;

import java.util.List;

import com.watches.online.entity.Product;

public interface ProductDao 
{
	public void addProduct(Product product);

	public List<Product>listProduct();
	public String listProductByJson();
	public Product getProductById(int ProductId);
	public void deleteProduct(int ProductId);
	public Product getProductByName(String productName);
}