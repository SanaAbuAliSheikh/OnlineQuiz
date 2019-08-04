package com.edu.www.model;

public class Quiz {
	
	int quizid;
	String quizname;
	
	public Quiz()
	{
		
	}
	
	public Quiz(int quizid, String quizname) {
		
		this.quizid = quizid;
		this.quizname = quizname;
	}
	
	
	public int getQuizid() {
		return quizid;
	}
	public void setQuizid(int quizid) {
		this.quizid = quizid;
	}
	public String getQuizname() {
		return quizname;
	}
	public void setQuizname(String quizname) {
		this.quizname = quizname;
	}
	
	

}
