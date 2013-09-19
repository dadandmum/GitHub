package com.test;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/* http://jhaij.iteye.com/blog/1872096
 *    @RunWith(SpringJUnit4ClassRunner.class)  
 *    @ContextConfiguration(locations={"file:WebRoot/WEB-INF/spring/*.xml"}) 
 *    @TestExecutionListeners({   
    WebContextTestExecutionListener.class,   
    DependencyInjectionTestExecutionListener.class,  
    DirtiesContextTestExecutionListener.class })  */

import com.UserBase;

public class testSpring {
	public static void main(String[] args) {
		 BeanFactory beansfactory = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		 System.out.println(beansfactory);
		 /*MockHttpServletRequest request = new MockHttpServletRequest();  
		 MockHttpSession session = new MockHttpSession();  
		 request.setSession(session);  
		 RequestContextHolder.setRequestAttributes(new ServletRequestAttributes(request));*/ 
		 
		 UserBase userbase = (UserBase)beansfactory.getBean("userbasetest");
		 System.out.println(userbase);
		 
		 }
}
