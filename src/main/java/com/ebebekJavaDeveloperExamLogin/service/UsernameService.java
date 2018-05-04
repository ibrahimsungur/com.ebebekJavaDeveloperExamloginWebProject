package com.ebebekJavaDeveloperExamLogin.service;

import java.util.List;

import com.ebebekJavaDeveloperExamLogin.model.Username;

public interface UsernameService {

	public List<Username> listUsername();

	public void addUsername(Username username);

	public void deleteUsername(long usernameId);

	public void updateUsername(Username username);

	public Username getById(long usernameId);
}
