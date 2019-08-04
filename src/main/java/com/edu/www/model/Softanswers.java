package com.edu.www.model;

public class Softanswers {

	int answerid;
	int questionid;
	String correctans;
	
	public Softanswers()
	{
		
	}
	
	public Softanswers(int answerid, int questionid, String correctans) {

		this.answerid = answerid;
		this.questionid = questionid;
		this.correctans = correctans;
	}

	
	public int getAnswerid() {
		return answerid;
	}
	public void setAnswerid(int answerid) {
		this.answerid = answerid;
	}
	public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	public String getCorrectans() {
		return correctans;
	}
	public void setCorrectans(String correctans) {
		this.correctans = correctans;
	}
	
	
}
