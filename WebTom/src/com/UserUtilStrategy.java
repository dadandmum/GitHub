package com;

import org.hibernate.Query;
import org.hibernate.Session;

public interface UserUtilStrategy {
	public Query getStrategy( Session session );
}
