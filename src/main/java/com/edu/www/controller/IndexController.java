package com.edu.www.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.edu.www.service.QuizService;
import com.edu.www.service.ResultService;
import com.edu.www.service.StudentService;

@Controller
public class IndexController {
	List<Map<String, Object>> l = new ArrayList();
	@Autowired
	QuizService quizSrv;
	@Autowired
	StudentService StdSrv;
	@Autowired
	ResultService resSrv;
	
	int a=0,f=0;
	int[] c = new int[10];
	@GetMapping("/")
	public String Index()
	{
		l = quizSrv.getRandomQuestion(); 
		for(Map<String, Object>  i : l) {
			
			Iterator it = i.values().iterator(); 			
			while(it.hasNext()) {
				int p= (Integer)it.next();
					c[f]=p;
					 f=f+1;
			}
		
		}
		
		
		return "index";
	}
	
	@PostMapping("/")
	public String Index7(@RequestParam int userid, Model map)
	{
		map.addAttribute("student",StdSrv.getStudentByRegno(userid));
		return "index";
	}
	
	
	/*
	@GetMapping("/quizques")
	public String Index1(@RequestParam(required=false,defaultValue="0") int quesid, Model map)
	{
		l = quizSrv.getRandomQuestion(); 
		for(Map<String, Object>  i : l) {
			
			Iterator it = i.values().iterator(); 			
			while(it.hasNext()) {
				int p= (Integer)it.next();
					c[f]=p;
					 f=f+1;
			}
		
		}
		
		map.addAttribute("getAns", quizSrv.getFromAns(c[a]));
		map.addAttribute("ques",quizSrv.getQuestion(c[a]));
		a = a+1;
		return "_quizques";
	}
	*/
	
	
	
	int Counts=0;
	
	@PostMapping("/quizques")
	public String Index2(@RequestParam(required=false,defaultValue="0") int quesid,
						@RequestParam(required=false,defaultValue="") String answer,
						@RequestParam(required=false,defaultValue="") String corrans,
						@RequestParam(required=false,defaultValue="0") int userid,
						Model map)
	{
		
			if(a<c.length) {
				if(a>0) {
					if(answer.equals(corrans)) {
						System.out.println("Correct");
						Counts=Counts+1;
						
					}
					else {
						System.out.println("InCorrect");
						
					}
					resSrv.setResult(userid, answer,corrans);
				}
			
			map.addAttribute("ques",quizSrv.getQuestion(c[a]));
			map.addAttribute("getAns", quizSrv.getFromAns(c[a]));
			
			a=a+1;
			
		}
			
		else
		{
			
		}
		if(a==10)
		{
			map.addAttribute("msg","Correct Answer"+" "+ (Counts)+ " "+ "Out Of" +" " + (c.length-1));
			
		}
			
		return "_quizques";
		
	}
	
	/*@GetMapping("/stdt")
	public String getStudent(@RequestParam int userid, Model map)
	{
		map.addAttribute("student",StdSrv.getStudentByRegno(userid));
		return "_stdt";
	}*/
	
	
	/*List<Map<String, Object>> l = new ArrayList();
	@Autowired
	QuizService srvQuiz;

	int a=0,f=0;
	int[] c = new int[4];
	@GetMapping("/")
	public String getQuestions(Model map)
	{
		l = srvQuiz.getRandomQuestion(); 
		for(Map<String, Object>  i : l) {
			
			Iterator it = i.values().iterator(); 			
			while(it.hasNext()) {
				int p= (Integer)it.next();
					c[f]=p;
					 f=f+1;
				
			}
	            
			
		}
		for(int j=0;j<4;j++) {
			System.out.println(c[j]);
		}
		System.out.println("a1 is: "+a);		
		map.addAttribute("ques",srvQuiz.getQuestion(c[a]));
		
		a = a+1;
	return "index";
	
	}
	
	@PostMapping("/")
	public String getQuestionAns(Model map)
	{
		if(a<4) {
			map.addAttribute("ques",srvQuiz.getQuestion(c[a]));
			a=a+1;
		}
		else {
			map.addAttribute("msg", "THANKYOU :)");
		}
		return "index";
	}*/
}
