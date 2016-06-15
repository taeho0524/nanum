package com.nanum.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nanum.domain.Member;
import com.nanum.persistance.MemberDao;

@Controller
public class MemberController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/login.nn")
	public String login(){
		System.out.println("login.nn");
		return "/login/login";
	}
	
	@RequestMapping("/forgot_account.nn")
	public String forgot_account(){
		System.out.println("forgot_account.nn");
		return "/login/forgot_account";
	}
	/*가입*/
	@RequestMapping("/signup.nn")
	public String sign_up(){
		
		System.out.println("signup.nn");
		return "/joinus/signup";
	}
	
	@RequestMapping("/signup2.nn")
	public String sign_up2(){
		
		System.out.println("signup2.nn");
		return "/joinus/signup2";
	}
	
	@RequestMapping("/board_request.nn")
	public String board_request(){
		System.out.println("board_request.nn");
		return "board.board_request";
	}
	@RequestMapping("/index.nn")
	public String index(){
		System.out.println("index.nn");
		return "index";
	}
	
	@RequestMapping("/duplicationCheck")
	public @ResponseBody String duplicationCheck(HttpServletRequest request) throws Exception {
		
	
		System.out.println("this it duple check");
		MemberDao memberdao = sqlSession.getMapper(MemberDao.class);	
		String em = request.getParameter("email");	
		int resultVO = memberdao.checkedEmail(em);
		String result;
		System.out.println("result:"+resultVO);
		if(resultVO>0)
		{
			result="false"; //아이디사용불가, fb시 가입된유저
		}
		else
		{
			result="true";	//아이디사용가능, fb시 회원가입 ㄱㄱ
		}
		System.out.println(result);
		return result;
	}
	
	@RequestMapping("/fblogin")
	public @ResponseBody void fblogin(HttpServletRequest request) throws Exception {
		

		System.out.println("드루와드루와");
		
		MemberDao memberdao = sqlSession.getMapper(MemberDao.class);
		
		System.out.println("드루와드루와2");

		String email = request.getParameter("email");
		System.out.println("Re"+request.getParameter("email"));
		System.out.println(email);
		System.out.println("드루와드루와3");
		
		
		memberdao.fblogin(email);
		
		
		
		System.out.println("드루와드루와4");
	}	
	
	@RequestMapping("/fbsignup.nn")
	public @ResponseBody void fbsignup(HttpServletRequest request) throws Exception {
		
		System.out.println("this is signup");
		System.out.println("드루와드루와");
		
		MemberDao memberdao = sqlSession.getMapper(MemberDao.class);
		
		System.out.println("드루와드루와2");

		String email = request.getParameter("email");
		System.out.println("Re"+request.getParameter("email"));
		System.out.println(email);
		System.out.println("드루와드루와3");
		
		
		memberdao.fbsignup(email);
		
		
		
		System.out.println("드루와드루와4");
	}	

	
}
