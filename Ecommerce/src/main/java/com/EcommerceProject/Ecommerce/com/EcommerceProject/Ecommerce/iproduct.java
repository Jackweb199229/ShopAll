package com.EcommerceProject.Ecommerce.com.EcommerceProject.Ecommerce;

import org.springframework.data.repository.CrudRepository;

public interface iproduct extends CrudRepository <product, Integer>{
	product findById(int id);
	
}
