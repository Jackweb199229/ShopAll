package com.EcommerceProject.Ecommerce.com.EcommerceProject.Ecommerce;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class cart {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int id;
	
	@ManyToOne
	private product product;
	
	@ManyToOne
	private Register register;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public product getProduct() {
		return product;
	}

	public void setProduct(product product) {
		this.product = product;
	}

	public Register getRegister() {
		return register;
	}

	public void setRegister(Register register) {
		this.register = register;
	}

	public cart(product product,
			Register register) {
		super();
		this.product = product;
		this.register = register;
	}

	public cart() {
		super();
	}
	
}




