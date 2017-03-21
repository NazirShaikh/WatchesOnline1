package com.watches.online.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.watches.online.daoimpl.SupplierDaoImpl;
import com.watches.online.entity.Supplier;

@Service
@Transactional
public class SupplierService 
{
	@Autowired
	private SupplierDaoImpl supplierDaoImpl;
	
	public void addSupplier(Supplier supplier)
	{
		this.supplierDaoImpl.addSupplier(supplier);
	}
		
	public List<Supplier> listSupplier()
	{
		return this.supplierDaoImpl.listSupplier();
	}
	
	public Supplier getSupplierById(int supplierId)
	{
		return this.supplierDaoImpl.getSupplierById(supplierId);
	}
	
	public Supplier getSupplierByName(String supplierName)
	{
		return this.supplierDaoImpl.getSupplierByName(supplierName);
	}
	public Supplier editSupplierById(int supplierId)
	{
		return supplierDaoImpl.getSupplierById(supplierId);
	}
	public void deleteSupplier(int supplierId)
	{
		supplierDaoImpl.deleteSupplier(supplierId);
	}
}