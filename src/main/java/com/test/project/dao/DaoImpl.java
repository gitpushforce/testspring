package com.test.project.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

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
		return jdbcTemplate.query("select * from Admin", new RowMapper<HomePojo>() {

			@Override
			public HomePojo mapRow(ResultSet rs, int rowNum) throws SQLException {
				HomePojo homePojo = new HomePojo();
				
				homePojo.setAdminnum(rs.getInt("idAd"));
				homePojo.setCargo(rs.getString("cargo"));
				homePojo.setFechaCreacion(rs.getTimestamp("fechaCreacion"));
				homePojo.setNombre(rs.getString("nombre"));
				
				return homePojo;
			}
		});

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
		return jdbcTemplate.update("update Admin set nombre=:nombre, cargo=:cargo, fechaCreacion=:fechaCreacion where idAd=:idAd", 
				new BeanPropertySqlParameterSource(pojo)) == 1;
	}

	@Override
	public boolean delete(int idAd) {
		return jdbcTemplate.update("delete from Admin where idAd=:idAd", new MapSqlParameterSource("idAd", idAd)) == 1;
	}

	@Override
	public int[] saveAll(List<HomePojo> admins) {
		// TODO Auto-generated method stub
		return null;
	}

}
