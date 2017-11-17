package com.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Orders;

@Repository
public class OrdersDAOImpl {

	@Autowired
	SessionFactory sessionFac;
	
	public OrdersDAOImpl(SessionFactory sessionFac)
	{
		super();
		this.sessionFac=sessionFac;
	}
	
	@Transactional
	public void addOrders(Orders orders)
	{
		Session session =sessionFac.openSession();
		session.beginTransaction();
		session.persist(orders);
		session.getTransaction().commit();
	}
}
