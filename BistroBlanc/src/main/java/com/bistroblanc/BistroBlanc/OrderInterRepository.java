package com.bistroblanc.BistroBlanc;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface OrderInterRepository extends CrudRepository<Orders,Integer>{
	int countById_id(int id);
	List<cart> findAllById_id(int id);
}
