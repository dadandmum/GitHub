package com;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
public class UserBaseUtil extends AbstractUserUtil implements UserUtilStrategy{
	UserBase userBase = null;
	UBUState state = new UBUEmptyState();
	public UserBaseUtil() {
		userBase = new UserBase("","");
	}
	@Override
	public List getUserList() {
		return  getUserList("from UserBase");
	}

	@Override
	public void insert(Object user) {
		userBase = (UserBase)user;
		insert();
	}
	public void insert( String userName , String password ){
		insert(new UserBase( userName , password ));
	}
	
	public void insert(){
		if ( userBase == null )
		{
			System.out.println("No user base");
			return;
		}
		state = new UBUGetState();
		List list = getUserList(this);
		if ( list.size() > 1 )
		{
			state = new UBUDeleteState();
			setUser(this);
			state = new UBUSaveState();
			setUser(this);
		}else if ( list.size() == 1 )
		{
			state = new UBUUpdateState();
			setUser(this);
		}else {
			state = new UBUSaveState();
			setUser(this);
		}
		
	}
	//return true if user name exist
	public boolean checkUserName( String name ){
		state = new UBUGetState();
		userBase = new UserBase(name,"");
		List list = getUserList(this);
		if ( list.size() > 0 )
			return true;
		return false;
	}
	//return true if password is right
	public boolean checkPassword( String name , String password){
		state = new UBUCheckState();
		userBase = new UserBase(name,password);
		List list = getUserList(this);
		if ( list.size() > 0 )
			return true;
		return false;
	}
	
	public void update( String userName , String password ){
		update(new UserBase(userName,password));
	}
	
	public void update( Object user ){
		userBase = (UserBase)user;
		update();
	}

	public void update(){
		state = new UBUGetState();
		List list = getUserList(this);
		if ( list.size() != 1 )
		{
			System.out.println("too many users");
			return;
		}
		state = new UBUUpdateState();
		setUser(this);
		
	}
	@Override
	public Query getStrategy(Session session) {
		if ( userBase == null )
			return null;
		return state.set(session, userBase);
	}
	
	static public  boolean ifPasswordRight(String password)
	{
		if ( password.length() > 6 )
			return true;
		return false;
	}
	
	public static void main(String[] args) {
		System.out.println("test UserBase");
		UserBaseUtil ubu = new UserBaseUtil();
		//System.out.println(ubu.checkUserName("mama"));
		//System.out.println(ubu.checkUserName("dadandmum"));
		//ubu.update("dadandmum" , "88913");
		System.out.println(ubu.checkPassword("dadandmum", "99999"));
		
		List<UserBase> list = ubu.getUserList();
		
		for( UserBase ub:list){
			System.out.println(ub.getUserName() + " " + ub.getPassword() );
			
		}
		ubu.insert("hahaha","111111");
		ubu.insert("dadandmum","7144234");
		
		list = ubu.getUserList();
		for( UserBase ub:list){
			System.out.println(ub.getUserName() + " " + ub.getPassword() );
			
		}
	}
	
	
}

interface UBUState{
	Query set(Session session , UserBase userBase);
}

class UBUEmptyState implements UBUState {
	@Override
	public Query set(Session session, UserBase userBase) {
		return null;
	}
}

// get the item with the same user name as input, return a query
class UBUGetState implements UBUState{

	@Override
	public Query set(Session session, UserBase userBase) {
		
		return session.createQuery("from UserBase ub where ub.userName = :name")
				.setString("name", userBase.userName);
	}
	
}

//get the item with the same user name and password as input, return a query
class UBUCheckState implements UBUState{
	@Override
	public Query set(Session session, UserBase userBase) {
		
		return session.createQuery("from UserBase ub where ub.userName = :name and ub.password =:pass")
				.setString("name", userBase.userName)
				.setString("pass" , userBase.password);
	}
	
}



class UBUUpdateState implements UBUState {
	@Override
	public Query set(Session session, UserBase userBase) {
		Query resQuery =
		session.createQuery("update UserBase ub set ub.password = :pass where ub.userName = :name ")
		.setString("pass", userBase.password)
		.setString("name", userBase.userName );
		resQuery.executeUpdate();
		return resQuery;
	}
}

class UBUSaveState implements UBUState {
	@Override
	public Query set(Session session, UserBase userBase) {
		session.save(userBase);
		return null;
	}
}

class UBUDeleteState implements UBUState{

	@Override
	public Query set(Session session, UserBase userBase) {
		Query resQuery =
		session.createQuery("delete from UserBase as u where u.userName = :name")
		.setString("name", userBase.userName);
		resQuery.executeUpdate();
		return resQuery;
	}
	
}