/*
	@FileName : CheckBoard.java
	@Project
	@Date :2016. 6. 8.
	@Author: 한수민
*/

package com.nanum.domain;

/*  	 
	@Class:CheckBoard
	@Date: 2016. 6. 8.
	@Author:한수민
*/ 


public class CheckBoard 
{
	int checked_no;
	int board_no;
	String check_date;
	
	/* 게시글 평가 내역 
	CREATE TABLE CHECK_BOARD
	(
	checked_no NUMBER NOT NULL, / 평가 번호 /
	board_no NUMBER NOT NULL, / 게시글 번호 /
	check_date DATE NOT NULL / 평가 날짜 /
	);
	 */
}
