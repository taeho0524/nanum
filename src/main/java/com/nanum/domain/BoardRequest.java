/*
@FileName : BoardRequest.java
@Project
@Date :2016. 6. 8.
@Author: �Ѽ���
*/
package com.nanum.domain;

/*  	 
 	 @Class:BoardRequest
 	 @Date: 2016. 6. 8.
	 @Author:�Ѽ���
*/ 

public class BoardRequest 
{
	
	int help_no;
	String request_title;
	String request_category;
	String request_content;
	int request_account;
	String request_date;
	int request_term;
	int member_id;
	int board_level;
	int location_no;

	/*

	CREATE TABLE BOARD_REQUEST 
	(
	help_no NUMBER NOT NULL, // �Խñ� ��ȣ 
	request_title VARCHAR2(100) NOT NULL, // ���� 
	request_category VARCHAR2(20) NOT NULL, / ī�װ�
	request_content VARCHAR2(1000) NOT NULL, /���� 
	request_account NUMBER NOT NULL, / �ݾ� 
	request_date DATE NOT NULL, / ����� 
	request_term NUMBER NOT NULL, / ��ϱⰣ 
	member_id NUMBER NOT NULL, / ȸ����ȣ 
	board_level NUMBER NOT NULL, / ���ѹ�ȣ 
	location_no NUMBER NOT NULL / ��ġ���� ��ȣ 
	);

	 */
}
