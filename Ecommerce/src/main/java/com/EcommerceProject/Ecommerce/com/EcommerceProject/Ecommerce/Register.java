package com.EcommerceProject.Ecommerce.com.EcommerceProject.Ecommerce;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Register {

	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	public int id;
	public String name;
	public String email;
	public String password;

	public int getid() {
		return id;
	}

	public void setUser_id(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Register() {
		super();
	}

	public Register(String name, String email, String password) {
		super();		
		this.name = name;
		this.email = email;
		this.password = password;
	}

	
}



