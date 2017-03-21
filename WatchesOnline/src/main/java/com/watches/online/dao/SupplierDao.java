package com.watches.online.dao;

import java.util.List;

import com.watches.online.entity.Supplier;

public interface SupplierDao 
{
	public void addSupplier(Supplier supplier);
	
	public List<Supplier> listSupplier();
	public Supplier getSupplierById(int supplierId);
	public void deleteSupplier(int supplierId);
	public Supplier getSupplierByName(String suppliertName);
}