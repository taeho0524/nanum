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
	
	@RequestMapping("/signup.nn")
	public String signup(){
		System.out.println("signup.nn");
		return "/login/signup";
	}
	
	@RequestMapping("/forgot_account.nn")
	public String forgot_account(){
		System.out.println("forgot_account.nn");
		return "/login/forgot_account";
	}
	
	@RequestMapping("/signup.nn.nn")
	public String sign_up(){
		
		System.out.println("signup.nn");
		return "/login/signup";
	}
	@RequestMapping("/board_request.nn")
	public String board_request(){
		System.out.println("board_request.nn");
		return "/login/board_request";
	}
	
	
	
	
	
	
	
	
	
}
