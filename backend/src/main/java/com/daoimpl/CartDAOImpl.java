package com.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.model.Cart;

@Repository/*("cartDAO")*/
public class CartDAOImpl /*implements CartDAO*/
{
	@Autowired
	SessionFactory sessionFac/*tory*/;
	public CartDAOImpl(SessionFactory sessionFac)
	{
		this.sessionFac = sessionFac;
		
	}
	
	public void insert(Cart cart)
	{
		Session session = sessionFac.openSession();
		session .beginTransaction();
		session.persist(cart);
		session.getTransaction().commit();
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Cart> findCartById(String userEmail)
	{
		Session session = sessionFac.openSession();
		List<Cart> cr =null;
		try 
		{	
			session.beginTransaction();
			cr=(List<Cart>)session
					.createQuery("from Cart where userEmail= :email")
					.setString("email", userEmail).list();
			session.getTransaction().commit();
		}	
		catch(HibernateException e)
		{
			session.getTransaction().rollback();
			
		}
		return cr;
		
}
	public Cart getCartByID(int cartID, String UserEmail)
	{
		Session session = sessionFac.openSession();
		Cart cr = null;
		try
		{
			session.beginTransaction();
			cr=(Cart)session
					.createQuery("from Cart where userEmail= :email and cartProductID= pId")
					.setString("email", UserEmail).setInteger("pId",cartID).uniqueResult();
			session.getTransaction().commit();
			return cr;
			
		}catch(HibernateException e)
		{
			session.getTransaction().rollback();
		}
		return cr;
		
	}
	
	public void deleteCart(int cartID)
	{
		Session session = sessionFac.openSession();
		session.beginTransaction();
		Cart cr= (Cart)session.get(Cart.class, cartID);
		session.delete(cr);
		session .getTransaction().commit();
		
	}
	
	public void Update(Cart cr)
	{
		Session session = sessionFac.openSession();
		session.beginTransaction();
		session.update(cr);
		session .getTransaction().commit();
		
	}
	
	@Transactional
	
	public boolean addCart(Cart cart) 
	{
		try
		{
			sessionFac.getCurrentSession().save(cart);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
	}
}

	/*@Transactional
	@Override
	public boolean updateCart(Cart cart) 
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(cart);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;	
		}
		
	}

	@Transactional
	@Override
	public boolean deleteCart(Cart cart) {
		try
		{
			sessionFactory.getCurrentSession().delete(cart);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;	
		}
	}

	@Override
	public Cart getCartItem(int cartitemId) 
	{
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class,cartitemId);
		session.close();
		return cart;
	}

	@Override
	public List<Cart> getCartItems(String userName) 
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Cart where username=:username and status='NP'");
		query.setParameter("username",userName);
		List<Cart> listCartItem=query.list();
		session.close();
		return listCartItem;
	}

}*/
