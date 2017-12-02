package com.test.project.dao;

import java.util.List;

import com.test.project.pojo.HomePojo;

public interface HomeDao {
	
	public void save(HomePojo pojo);
	public List<HomePojo> findAll();
	public HomePojo findById(int id);
	public List<HomePojo> findByNombre(String nombre);
	public void update(HomePojo pojo);
	public void delete(int idAd);
	//public int[] saveAll(List<HomePojo> admins);
}