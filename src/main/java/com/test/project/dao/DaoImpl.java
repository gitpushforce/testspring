package com.test.project.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.test.project.pojo.HomePojo;

@Transactional
@Repository
class DaoImpl implements HomeDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void save(HomePojo pojo) {
		getSession().save(pojo);
	}

	@Override
	public List<HomePojo> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HomePojo findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HomePojo> findByNombre(String nombre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(HomePojo pojo) {
		// TODO Auto-generated method stub
	}

	@Override
	public void delete(int idAd) {
		// TODO Auto-generated method stub
	}

}
