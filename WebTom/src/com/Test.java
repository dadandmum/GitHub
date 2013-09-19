
//Path :¡¡src/com/Test.java
package com;

import java.util.List;

import org.apache.jsp.index_jsp;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Test {
	public static void main(String[] args) {
		Session session = HibernateUtil.getSession();
		Transaction tx = session.beginTransaction();
		
		UserBase userBase = new UserBase("USER_NAME", "PASSWORD");
		
		session.save(userBase);
		
		List<UserBase> list = session.createQuery("from UserBase").list();
		for( UserBase ub: list )
		{
			System.out.println(ub.toString());
		}
		
	    tx.commit();
	    HibernateUtil.closeSession();
	}
}
