package com.nanum.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.nanum.domain.Member;

public interface MemberDAO 
{
	
	//sign up	
	public int insert(String member_email, String member_password) throws ClassNotFoundException, SQLException;
	
	//email exist check
	public int checkedEmail(String email) throws ClassNotFoundException, SQLException;
	
	//email password right check
	public Member loginCheck(String member_email) throws ClassNotFoundException, SQLException;
	
	//update last date
	public int lastDate(String member_email, String member_password) throws ClassNotFoundException, SQLException;
	
	//fb login ->update last date
	public void fblogin(String email) throws ClassNotFoundException, SQLException;
	
	//fb sign up
	public void fbsignup(String email,String password) throws ClassNotFoundException, SQLException;
	
	public Member setloginsession(String email) throws ClassNotFoundException, SQLException;
	
	public String getfbpassword(String email) throws ClassNotFoundException, SQLException;
}

