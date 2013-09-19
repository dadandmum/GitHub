package com;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

public abstract class AbstractUserUtil implements UserUtil{
	
	abstract public java.util.List getUserList();
	abstract public void insert ( Object user);
	public java.util.List getUserList( String query ){
			Session session = HibernateUtil.getSession();
			Transaction tx = session.beginTransaction();
			//UserInfo ui = (UserInfo)session.load(UserInfo.class, new Long(2) );
			//System.out.println(ui.toString());
			java.util.List list = session.createQuery(query )
					.list();
		    tx.commit();
		    HibernateUtil.closeSession();
		    return list;
	}
	
	public java.util.List getUserList( UserUtilStrategy strategy ){
		Session session = HibernateUtil.getSession();
		Transaction tx = session.beginTransaction();
		//UserInfo ui = (UserInfo)session.load(UserInfo.class, new Long(2) );
		//System.out.println(ui.toString());
		java.util.List list = strategy.getStrategy(session).list();
	    tx.commit();
	    HibernateUtil.closeSession();
	    return list;
	}
	
	public void setUser( UserUtilStrategy strategy ){
		Session session = HibernateUtil.getSession();
        Transaction tx = session.beginTransaction();
        strategy.getStrategy(session);       
        tx.commit();
        HibernateUtil.closeSession();
	}
	
	public void setUser( String query ){
		Session session = HibernateUtil.getSession();
        Transaction tx = session.beginTransaction();
        session.createQuery(query).executeUpdate();
        tx.commit();
        HibernateUtil.closeSession();
	}
	
	public <T> void  saveUser( T User){
		Session session = HibernateUtil.getSession();
        Transaction tx = session.beginTransaction();
        session.save(User);
        tx.commit();
        HibernateUtil.closeSession();
		
	}
	
	public <T> void  updateUser( T User){
		Session session = HibernateUtil.getSession();
        Transaction tx = session.beginTransaction();
        session.update(User);
        tx.commit();
        HibernateUtil.closeSession();
		
	}
	
	public List getUserByName( String type , String userName ){
		Session session = HibernateUtil.getSession();
        Transaction tx = session.beginTransaction();
        java.util.List list = session.createQuery("from "+type +" as u where u.userName = :name")
        		.setString("name", userName)
        		.list();
        tx.commit();
        HibernateUtil.closeSession();
        return list;
		
	}
}
