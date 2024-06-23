package com.jsp.shoppingcart_application.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.shoppingcart_application.dto.Merchant;

@Repository
public class MerchantDao 
{
	@Autowired
	private EntityManagerFactory emf;
	
	public void saveMerchant(Merchant m)
	{
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(m);
		et.commit();
	}
	
	
	public Merchant findMerchantById(int id)
	{
		EntityManager em=emf.createEntityManager();
		Merchant m=em.find(Merchant.class, id);
		return m;
	}
	
	
	public void deleteMerchantByid(int id)
	{
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		Merchant m=em.find(Merchant.class, id);
		et.begin();
		em.remove(m);
		et.commit();
	}
	
	public void updateMerchant(Merchant m)
	{
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(m);
		et.commit();
	}
	
	public Merchant findMerchantByEmailAndPassword(String email, String password)
	{
		EntityManager em=emf.createEntityManager();
		
		Query query=em.createQuery("select c from Merchant c where c.email=?1 and c.password=?2");
		query.setParameter(1, email);
		query.setParameter(2, password);
		try {
		Merchant m=(Merchant)query.getSingleResult();
		return m;
		}
		catch(NoResultException e)
		{
			return null;
		}
	}
}
