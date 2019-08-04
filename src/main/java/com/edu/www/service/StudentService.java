package com.edu.www.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.edu.www.model.Users;


@Service
public class StudentService {
	
	@Autowired
	JdbcTemplate db;
	
	public Users getStudentByRegno(int userid) {
		String sql = "SELECT * FROM users WHERE userid = ?";
		return db.queryForObject(sql, new Object[] {userid}, new BeanPropertyRowMapper<Users>(Users.class));
	}

}
