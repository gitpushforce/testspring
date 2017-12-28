package com.test.project.pojo;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AdminRowMapper implements RowMapper<HomePojo>{

	@Override
	public HomePojo mapRow(ResultSet rs, int rowNum) throws SQLException {
		HomePojo homePojo = new HomePojo();
		
		homePojo.setAdminnum(rs.getInt("adminnum"));
		homePojo.setCargo(rs.getString("cargo"));
		homePojo.setFechaCreacion(rs.getTimestamp("fechaCreacion"));
		homePojo.setNombre(rs.getString("nombre"));
		
		return homePojo;
	}

}
