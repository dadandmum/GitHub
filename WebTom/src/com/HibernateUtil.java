//Path: src/com/HibernateUtil

package com;

import org.hibernate.*;
import org.hibernate.cfg.*;

public class HibernateUtil {

    public static SessionFactory sessionFactory;

    static public SessionFactory getSessionFactory(){
    	return sessionFactory;
    }
    static public void setSessionFactory( SessionFactory sf ){
    	sessionFactory = sf;
    }
    
    static {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
        	/*File configFile = new File("src/hibernate.cfg.xml");
        	if ( configFile.exists() == false )
        		configFile = new File("http://localhost:8080/WebTomcat/src/hibernate.cfg.xml");
        	if ( configFile.exists() == false )
        		configFile = new File("http://localhost:8080/WebTomcat/config/hibernate.cfg.xml");
        	if ( configFile.exists() == false )
        		configFile = new File("http://localhost:8080/WebTomcat/WEB-INF/classes/hibernate.cfg.xml");
        	sessionFactory = new Configuration().configure(configFile).buildSessionFactory();*/
        	sessionFactory = new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static ThreadLocal session = new ThreadLocal();

    public static Session getSession() throws HibernateException {
        Session s = (Session) session.get();
        // Open a new Session, if this thread has none yet
        if (s == null) {
            s = sessionFactory.openSession();
            // Store it in the ThreadLocal variable
            session.set(s);
        }
        return s;
    }
    public static void setSession( Session s ){
    	session.set(s);
    }

    public static void closeSession() throws HibernateException {
        Session s = (Session) session.get();
        if (s != null)
            s.close();
        session.set(null);
    }
}