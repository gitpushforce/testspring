package com.test.project.service;


import java.sql.Timestamp;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.project.dao.HomeDao;
import com.test.project.pojo.HomePojo;

@Service
public class HomeService {
	
	@Autowired
	private HomeDao homeDao;
	
	public boolean save(HomePojo pojo) {
		pojo.setFechaCreacion(new Timestamp(new Date().getTime()));
		boolean bool = homeDao.save(pojo);
		return bool;
	}
	
}
