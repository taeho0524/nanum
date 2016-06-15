package com.nanum.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import com.nanum.dao.MemberDAO;
import com.nanum.domain.Member;


@Controller
public class LoginController {

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private View JsonView;
	
	
	//로그인 화면 이동
	@RequestMapping("/login.nn")
	public String login(){
		System.out.println("login.nn");
		return "/login/login";
	}
	//아이디 비밀번호 찾기
	@RequestMapping("/forgot_account.nn")
	public String forgot_account(){
		System.out.println("forgot_account.nn");
		return "/login/forgot_account";
	}
	//회원가입 화면 이동
	@RequestMapping("/signup.nn")
	public String sign_up(){
		
		System.out.println("signup.nn");
		return "/joinus/signup";
	}

	//0615adds
	
	/*  	 
 	 @Class :loginCheck //로그인 시 이메일, 비밀번호 체크 (비동기)
 	 @Date : 2016. 6. 13. 
	 @Author :Shin d
	 */
	@RequestMapping("/loginCheck.nn")
	public View loginCheck(HttpServletRequest request, ModelMap model) throws Exception {
		
		MemberDAO memberDao = sqlSession.getMapper(MemberDAO.class);
		
		int result = 0;
		
		String member_email = request.getParameter("member_email");
		String member_password = request.getParameter("member_password");
		
		Member member = memberDao.loginCheck(member_email);
		memberDao.lastDate(member_email, member_password);
		result = memberDao.checkedEmail(member_email);
		
		if(result != 0){
			model.addAttribute("member_email", member.getMember_email());
			model.addAttribute("member_password", member.getMember_password());
		}else{
			model.addAttribute("member_email", null);
			model.addAttribute("member_password", null);
		}
		
		return JsonView;
	}
	
	//첫 화면 이동
		@RequestMapping({"/index.nn","/",""})
		public String index(){
			System.out.println("this is index.nn");
			System.out.println("index.nn");
			return "index.index";
		}
	
	/*  	 
 	 @Class :write //회원가입 처리 (동기)
 	 @Date : 2016. 6. 13. 
	 @Author :Shin d
	 */
	@RequestMapping("/joinok.nn")
	public String insert(String member_email, String member_password) throws ClassNotFoundException, SQLException{
		
		MemberDAO memberDao = sqlSession.getMapper(MemberDAO.class);
		
		memberDao.insert(member_email, member_password);
		
		return "/login/login";
	}
	
	
	
	/*  	 
 	 @Class :duplicationCheck //회원 가입시 아이디 체크 (비동기)
 	 @Date : 2016. 6. 13. 
	 @Author :soomti 
	 */
	@RequestMapping("/duplicationCheck")
	public @ResponseBody String duplicationCheck(HttpServletRequest request) throws Exception {
		
		System.out.println("duplicationCheck.nn");	
		
		MemberDAO memberdao = sqlSession.getMapper(MemberDAO.class);	
	
		String em = request.getParameter("email");	
		
		int resultVO = memberdao.checkedEmail(em);		
	
		String result;
	
		System.out.println("result:"+resultVO);
		if(resultVO>0){
			
			result="false"; //일반가입:아이디사용불가, facebook: 가입된유저
	
		}else{
			
			result="true";	//일반가입:아이디사용가능, facebook: 회원가입 
		}
		
		System.out.println(result);
		return result;
	}
	/*  	 
	 @Class :fblogin //페이스북 로그인 중복체크해서 잇으면 로그인 없으면 가입 맵퍼를 탄다.
	 @Date : 2016. 6. 13. 
	 @Author :soomti 
	 */
	@RequestMapping("/fblogin")
	public @ResponseBody String fblogin(HttpServletRequest request) throws Exception {
		
		System.out.println("fb login ");
		MemberDAO memberdao = sqlSession.getMapper(MemberDAO.class);
		
		String email = request.getParameter("email");
		
		System.out.println("email"+email);	
		
		memberdao.fblogin(email);
		
		Member member = memberdao.setloginsession(email); //멤버에 올려주면 된다. 
		System.out.println(member.toString());
		
		String password = memberdao.getfbpassword(email);
		
		System.out.println(password);
		return password;
		
	}	
	//페이스북 가입 
	/*  	 
	 @Class :fbsignup // 로그인 없으면 가입 맵퍼를 탄다.
	 @Date : 2016. 6. 13. 
	 @Author :soomti 
	 */
	@RequestMapping("/fbsignup.nn")
	public @ResponseBody void fbsignup(HttpServletRequest request) throws Exception {
		
		System.out.println("/fbsignup.nn");
	
		MemberDAO  memberdao = sqlSession.getMapper(MemberDAO.class);
	
		String email = request.getParameter("email");
		String password =request.getParameter("fbaccesstoken");
		password=password.substring(0, 10);
		System.out.println("email"+email);	
		System.out.println(password);
		System.out.println("password:"+password);
			
		memberdao.fbsignup(email,password);
	}	

	
}
