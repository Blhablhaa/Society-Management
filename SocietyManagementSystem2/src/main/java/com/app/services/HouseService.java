package com.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.HouseRepository;
import com.app.pojos.House;

@Service
public class HouseService implements IHouse {
	@Autowired
	private HouseRepository houserepo;

	public void createHouse(House house) {
		// TODO Auto-generated method stub
		houserepo.save(house);
		
		
	}

}
