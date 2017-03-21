package com.watches.online.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.watches.online.dao.SupplierDao;
import com.watches.online.entity.Supplier;
@Repository
public class SupplierDaoImpl implements SupplierDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addSupplier(Supplier supplier) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(supplier);
	}
	@SuppressWarnings("unchecked")
	public List<Supplier> listSupplier() 
	{
		Session session = this.sessionFactory.getCurrentSession();
		List<Supplier> SupplierList = session.createQuery("from Supplier").list();
		return SupplierList;
	}
	@SuppressWarnings("unchecked")
	public Supplier getSupplierById(int supplierId) 
	{
		String hql = "from Supplier where supplierId="+supplierId;
		List<Supplier>slist = sessionFactory.getCurrentSession().createQuery(hql).list();
		return slist.get(0);
	}
	public void deleteSupplier(int supplierId) 
	{
		Supplier s=new Supplier();
		s.setSupplierId(supplierId);
		sessionFactory.getCurrentSession().delete(s);
	}
	@SuppressWarnings("unchecked")
	public Supplier getSupplierByName(String supplierName) 
	{
		List<Supplier> slist = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierName = "+"'"+supplierName+"'").list();
		return slist.get(0);
	}
}

/*	@Autowired
	private SessionFactory sessionFactory;
	
	public void addSupplier(Supplier supplier)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(supplier);
	}
	@SuppressWarnings("unchecked")
	public List<Supplier> listSupplier()
	{
		Session session = this.sessionFactory.getCurrentSession();
		List<Supplier> SupplierList = session.createQuery("from Supplier").list();
		return SupplierList;
	}
	public void removeSupplier(int supplierId)
	{
		Supplier supplier = sessionFactory.getCurrentSession().load(Supplier.class, new Integer(supplierId));
		if(null!=supplier)
		{
			sessionFactory.getCurrentSession().delete(supplier);
		}
	}
	@SuppressWarnings("unchecked")
	public Supplier getSupplierByName(String supplierName)
	{
		
		List<Supplier> slist = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierName = "+"'"+supplierName+"'").list();
		return slist.get(0);
	}
	@SuppressWarnings("unchecked")
	public Supplier getSupplierById(int supplierId)
	{
		String hql = "from Supplier where supplierId="+supplierId;
		List<Supplier>slist = sessionFactory.getCurrentSession().createQuery(hql).list();
		return slist.get(0);
	}
	public void deleteSupplier(int supplierId) 
	{
		Supplier s=new Supplier();
		s.setSupplierId(supplierId);
		sessionFactory.getCurrentSession().delete(s);
	}*/