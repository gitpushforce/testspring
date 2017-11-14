package com.test.project.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.test.project.pojo.AdminRowMapper;
import com.test.project.pojo.HomePojo;
@Component("homeDao")
class DaoImpl implements HomeDao{
	
	private NamedParameterJdbcTemplate jdbcTemplate;
		
		@Autowired
		private void setDataSource(DataSource dataSource){
			this.jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public boolean save(HomePojo pojo) {
		BeanPropertySqlParameterSource paramMap = new BeanPropertySqlParameterSource(pojo);
		
		return jdbcTemplate.
				update("insert into Admin (nombre, cargo, fechaCreacion) values (:nombre, :cargo, :fechaCreacion)", paramMap) == 1;
	}

	@Override
	public List<HomePojo> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HomePojo findById(int id) {
		return jdbcTemplate.queryForObject("select * from Admin where idAd=:idAd", 
				new MapSqlParameterSource("idAd", id), new AdminRowMapper());
	}

	@Override
	public List<HomePojo> findByNombre(String nombre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(HomePojo pojo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int idAd) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int[] saveAll(List<HomePojo> admins) {
		// TODO Auto-generated method stub
		return null;
	}

}
