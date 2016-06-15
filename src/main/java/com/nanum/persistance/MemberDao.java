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
	
	//���̽��� �α���
	public void fblogin(String email) throws ClassNotFoundException, SQLException;
	
	//���̽��� ����
	public void fbsignup(String email) throws ClassNotFoundException, SQLException;

}

