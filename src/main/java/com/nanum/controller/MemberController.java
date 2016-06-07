package com.nanum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	
	
	@RequestMapping("/login.nn")
	public String login(){
		System.out.println("login.nn");
		return "/login/login";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
