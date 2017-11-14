package com.test.project.dao;

import java.util.List;

import com.test.project.pojo.HomePojo;

public interface HomeDao {
	
	public boolean save(HomePojo pojo);
	public List<HomePojo> findAll();
	public HomePojo findById(int id);
	public List<HomePojo> findByNombre(String nombre);
	public boolean update(HomePojo pojo);
	public boolean delete(int idAd);
	public int[] saveAll(List<HomePojo> admins);
}