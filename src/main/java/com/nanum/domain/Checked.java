/*
	@FileName : Checked.java
	@Project : NANUM
	@Date : 2016. 6. 8.
	@Author : 한수민
*/
package com.nanum.domain;
/*  	 
	 @Class : Checked
	 @Date : 2016. 6. 8.
	 @Author : 한수민

//관련된 테이블 생성문
 CREATE TABLE CHECKED (
	checked_no NUMBER NOT NULL,   
	checked_score NUMBER NOT NULL,   
	checked_content VARCHAR2(1000) NOT NULL, 
	member_id NUMBER NOT NULL  
);
*/


public class Checked{
	
	private int checked_no; //평가 번호
	private int checked_score; //평가 점수
	private String checked_content; //평가 글
	private int member_id; //평가자 
	
	/*
	Update
	
	@Date : 2016. 6. 8.
	@Author : 신진우
	@Contents : DTO getter,setter 추가
	
	*/
	
	public int getChecked_no() {
		return checked_no;
	}
	public void setChecked_no(int checked_no) {
		this.checked_no = checked_no;
	}
	public int getChecked_score() {
		return checked_score;
	}
	public void setChecked_score(int checked_score) {
		this.checked_score = checked_score;
	}
	public String getChecked_content() {
		return checked_content;
	}
	public void setChecked_content(String checked_content) {
		this.checked_content = checked_content;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
}