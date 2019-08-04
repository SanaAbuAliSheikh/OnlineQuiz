package com.edu.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class ResultService {

	@Autowired
	JdbcTemplate db;
	
	public int setResult(final int userid, final String userans, final String status) {
		return db.update("INSERT INTO result(userid,userans,status) VALUES('"+userid+"','"+userans+"','"+status+"')");
	}
}
