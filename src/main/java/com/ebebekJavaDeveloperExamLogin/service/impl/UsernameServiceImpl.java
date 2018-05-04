package com.ebebekJavaDeveloperExamLogin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ebebekJavaDeveloperExamLogin.dao.UsernameDao;
import com.ebebekJavaDeveloperExamLogin.model.Username;
import com.ebebekJavaDeveloperExamLogin.service.UsernameService;

@Service
@Transactional
public class UsernameServiceImpl implements UsernameService{

	@Autowired
	private UsernameDao usernameDao;
	
	@Override
	public List<Username> listUsername() {
	
		return usernameDao.listUsername();
	}

	@Override
	public void addUsername(Username username) {
		usernameDao.addUsername(username);
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
