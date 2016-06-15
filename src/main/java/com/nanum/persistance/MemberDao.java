package com.nanum.persistance;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.nanum.domain.Member;

public interface MemberDao 
{
	//사용자 등록(기본정보)
	public int registerMember(Member member) throws ClassNotFoundException, SQLException;
	
	//사용자 정보 조회
	public Member getMemberInfo(String email) throws ClassNotFoundException, SQLException;
	
	//사용자 비밀번호 변경
	public int updateMemberAccount(Member member) throws ClassNotFoundException, SQLException;

	//사용자 목록(기본정보) 조회
	public List<Member> getMembers(Map<String, String> parameters) throws ClassNotFoundException, SQLException;
	
	//이메일 중복확인
	public int checkedEmail(String email) throws ClassNotFoundException, SQLException;
	
	//페이스북 로그인
	public void fblogin(String email) throws ClassNotFoundException, SQLException;
	
	//페이스북 가입
	public void fbsignup(String email) throws ClassNotFoundException, SQLException;

}

