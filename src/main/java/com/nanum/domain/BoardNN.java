/*
	@FileName : BoardNN.java
	@Project
	@Date :2016. 6. 7.
	@Author: 
	 한수민
*/
package com.nanum.domain; 
/*  	 
	 @Class:BoardNN
	 @Date: 2016. 6. 7.
 	 @Author:한수민
*/  


public class BoardNN 
{
	int board_no;
	String  board_title;
	String  board_category;
	String  board_image_title;
	String  board_image_detail;
	String  board_movie_url;
	String  board_content;
	int  board_account;
	String  board_date;
	int  board_term;
	int  board_hit;
	int  board_like;
	int member_id;
	int  board_level;
	int location_no;
	
	
	/*
	//관련된 테이블 생성문 
	//등록 게시글
	CREATE TABLE BOARD_NN (
		board_no NUMBER NOT NULL, //게시글 번호 
		board_title VARCHAR2(100) NOT NULL, //제목 
		board_category VARCHAR2(20) NOT NULL,  //카테고리 
		board_image_title VARCHAR2(1000) NOT NULL,  //대문 사진 
		board_image_detail VARCHAR2(1000) NOT NULL,  //상세 내용 사진 
		board_movie_url VARCHAR2(1000) NOT NULL,  //동영상 주소 
		board_content VARCHAR2(1000) NOT NULL,  //내용 
		board_account NUMBER NOT NULL, // 금액 
		board_date DATE NOT NULL,  //등록일 
		board_term NUMBER NOT NULL,  //등록기간 
		board_hit NUMBER NOT NULL, //조회수 
		board_like NUMBER NOT NULL, // 좋아요 
		member_id NUMBER NOT NULL, // 회원번호 
		board_level NUMBER NOT NULL, // 권한번호 
		location_no NUMBER NOT NULL // 위치정보 번호 
	);

	*/
}
