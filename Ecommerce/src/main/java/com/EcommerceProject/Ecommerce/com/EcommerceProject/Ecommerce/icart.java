package com.EcommerceProject.Ecommerce.com.EcommerceProject.Ecommerce;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface icart extends CrudRepository<cart, Integer>{
	int countByRegister_id(int id);

    List<cart> findAllByRegister_id(int id);
    

}
