package com.EcommerceProject.Ecommerce.com.EcommerceProject.Ecommerce;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface iRegister extends CrudRepository<Register, Integer>{

	Register findByEmail(String email);
	void save(product p1);
	
	
//	@Query("Select * from register r1 where r1.email=email and r1.password = passowrd")
//	public Register findByEmailAndPassword(String email, String password);
	
}
