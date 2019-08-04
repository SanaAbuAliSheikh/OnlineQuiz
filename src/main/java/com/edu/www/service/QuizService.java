package com.edu.www.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class QuizService {

	@Autowired
	JdbcTemplate db;
	
	public List<Map<String, Object>> getQuestion(int a)
	{
		return db.queryForList("SELECT * FROM softquestion WHERE questionid='"+a+"'");
	}
	
	public List<Map<String, Object>> getRandomQuestion()
	{
		
		return db.queryForList("SELECT questionid FROM softquestion ORDER BY RAND()");
		
	}
	
	public List<Map<String, Object>> getFromAns(int a) {
		return db.queryForList("SELECT correctans FROM softanswers where questionid='"+a+"'");
	}	
}
