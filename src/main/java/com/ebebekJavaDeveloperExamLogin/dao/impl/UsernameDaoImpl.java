package com.ebebekJavaDeveloperExamLogin.dao.impl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ebebekJavaDeveloperExamLogin.dao.UsernameDao;
import com.ebebekJavaDeveloperExamLogin.model.Username;


@Repository
public class UsernameDaoImpl implements UsernameDao {

	private static final Logger log = LoggerFactory.getLogger(UsernameDaoImpl.class);
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@SuppressWarnings("unused")
	@Override
	public List<Username> listUsername() {
		Session session=sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<Username>list=session.createQuery("From Username").list();
		for ( Username username :list) {
			log.info("Username username :"+list);
		}
		return list;
	}

	@Override
	public void addUsername(Username username) {
		Session session=sessionFactory.getCurrentSession();
		session.save(username);
		log.info("Username Saved:"+username);
		
	}

	@Override
	public void deleteUsername(long usernameId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateUsername(Username username) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Username getById(long usernameId) {
		// TODO Auto-generated method stub
		return null;
	}

}
