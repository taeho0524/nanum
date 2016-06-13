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

}

/*
public interface MemberDao {

	
	//사용자 권한 등록(기본권한)
	public int createMemberAuthority(AuthorityCommand authorityCommand) throws ClassNotFoundException, SQLException;
	
	//사용자 고유 주소 조회
	public String getPersonalURI(String email) throws ClassNotFoundException, SQLException;
	
	
	//사용자 테마 컬러 등록
	public int updateColorTheme(String colorTheme,String email) throws ClassNotFoundException, SQLException;

	//사용자 테마 컬러 조회
	public String selectColorTheme(String email) throws ClassNotFoundException, SQLException;

	//사용자 검색 searchMembers
	public List<SearchMemberCommand> searchMembers(Map<String, String> parameters) throws ClassNotFoundException, SQLException;
	
	//고유주소로 사용자 이메일 조회
	public String getEmailByPersonalURI(String personalURI) throws ClassNotFoundException, SQLException;
	
	//사용자
	public BaseMemberInfo getPublicMember(String email) throws ClassNotFoundException, SQLException;
	
	
	//사용자 존재 여부 확인 by Email
	public int hasMemberByEmail(String email) throws ClassNotFoundException, SQLException;
	
	//사용자 존재 여부 확인 by personalURI
	public int hasMemberByPersonalURI(String personalURI) throws ClassNotFoundException, SQLException;
	
	
	public int deleteMemberAuthority(String email) throws ClassNotFoundException, SQLException;
	
	public int updateMemberAuthority(String authoritiy, String email) throws ClassNotFoundException, SQLException;
		
}
*/