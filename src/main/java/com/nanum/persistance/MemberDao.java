package com.nanum.persistance;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.nanum.domain.Member;

public interface MemberDao 
{
	//����� ���(�⺻����)
	public int registerMember(Member member) throws ClassNotFoundException, SQLException;
	
	//����� ���� ��ȸ
	public Member getMemberInfo(String email) throws ClassNotFoundException, SQLException;
	
	//����� ��й�ȣ ����
	public int updateMemberAccount(Member member) throws ClassNotFoundException, SQLException;

	//����� ���(�⺻����) ��ȸ
	public List<Member> getMembers(Map<String, String> parameters) throws ClassNotFoundException, SQLException;
	
	//�̸��� �ߺ�Ȯ��
	public int checkedEmail(String email) throws ClassNotFoundException, SQLException;

}

/*
public interface MemberDao {

	
	//����� ���� ���(�⺻����)
	public int createMemberAuthority(AuthorityCommand authorityCommand) throws ClassNotFoundException, SQLException;
	
	//����� ���� �ּ� ��ȸ
	public String getPersonalURI(String email) throws ClassNotFoundException, SQLException;
	
	
	//����� �׸� �÷� ���
	public int updateColorTheme(String colorTheme,String email) throws ClassNotFoundException, SQLException;

	//����� �׸� �÷� ��ȸ
	public String selectColorTheme(String email) throws ClassNotFoundException, SQLException;

	//����� �˻� searchMembers
	public List<SearchMemberCommand> searchMembers(Map<String, String> parameters) throws ClassNotFoundException, SQLException;
	
	//�����ּҷ� ����� �̸��� ��ȸ
	public String getEmailByPersonalURI(String personalURI) throws ClassNotFoundException, SQLException;
	
	//�����
	public BaseMemberInfo getPublicMember(String email) throws ClassNotFoundException, SQLException;
	
	
	//����� ���� ���� Ȯ�� by Email
	public int hasMemberByEmail(String email) throws ClassNotFoundException, SQLException;
	
	//����� ���� ���� Ȯ�� by personalURI
	public int hasMemberByPersonalURI(String personalURI) throws ClassNotFoundException, SQLException;
	
	
	public int deleteMemberAuthority(String email) throws ClassNotFoundException, SQLException;
	
	public int updateMemberAuthority(String authoritiy, String email) throws ClassNotFoundException, SQLException;
		
}
*/