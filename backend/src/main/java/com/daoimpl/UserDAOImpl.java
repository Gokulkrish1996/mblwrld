package com.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDAO;
import com.model.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	
	public boolean addUser(User user) {
		try
		{
		Session session=sessionFactory.getCurrentSession();
		session.save(user);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}


	public List<User> retrieveUser() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from User");
		List<User> listUser=query.list();
		session.close();
		return listUser;
	}

	@Transactional
	
	public boolean deleteUser(User user) {
		try
		{
		Session session=sessionFactory.getCurrentSession();
		session.delete(user);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);	
		return false;
		}
	}


	public User getUser(String userName) {
		Session session=sessionFactory.openSession();
		User user=(User)session.get(User.class,userName);
		session.close();
		return user;
	}

	@Transactional
	
	public boolean updateUser(User user) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}

}
