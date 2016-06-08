/*
@FileName : BoardRequest.java
@Project
@Date :2016. 6. 8.
@Author: 한수민
*/
package com.nanum.domain;

/*  	 
 	 @Class:BoardRequest
 	 @Date: 2016. 6. 8.
	 @Author:한수민
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
	help_no NUMBER NOT NULL, // 게시글 번호 
	request_title VARCHAR2(100) NOT NULL, // 제목 
	request_category VARCHAR2(20) NOT NULL, / 카테고리
	request_content VARCHAR2(1000) NOT NULL, /내용 
	request_account NUMBER NOT NULL, / 금액 
	request_date DATE NOT NULL, / 등록일 
	request_term NUMBER NOT NULL, / 등록기간 
	member_id NUMBER NOT NULL, / 회원번호 
	board_level NUMBER NOT NULL, / 권한번호 
	location_no NUMBER NOT NULL / 위치정보 번호 
	);

	 */
}
