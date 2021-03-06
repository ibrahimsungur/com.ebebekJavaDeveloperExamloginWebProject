package com.ebebekJavaDeveloperExamLogin.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Username")
public class Username implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "UsernameId")
	private long usernameId;
	@Column(name = "Username")
	private String username;
	@Column(name = "Eamil")
	private String email;
	@Column(name = "Password")
	private String password;

	public Username() {
		super();
	}

	public Username( String username, String email, String password) {
		
		this.username = username;
		this.email = email;
		this.password = password;
	}

	public long getUsernameId() {
		return usernameId;
	}

	public void setUsernameId(long usernameId) {
		this.usernameId = usernameId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Username [usernameId=" + usernameId + ", username=" + username + ", email=" + email + ", password="
				+ password + "]";
	}

}
