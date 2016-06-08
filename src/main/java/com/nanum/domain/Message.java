package com.nanum.domain;
/*
@FileName : Message.java
@Project : NANUM
@Date : 2016. 6. 8.
@Author: 신진우
*/
 
/*      
 @Class : Message
 @Date : 2016. 6. 8.
 @Author : 신진우

//관련된 테이블 생성문 
 CREATE TABLE MESSAGE (
	message_no NUMBER NOT NULL,
	message_content VARCHAR2(1000) NOT NULL,
	message_date DATE NOT NULL,
	member_receiver NUMBER NOT NULL,
	member_sender NUMBER NOT NULL
);
*/
public class Message {

	private int message_no; //쪽지 번호
	private String message_content; //내용
	private String message_date; //보낸 날짜
	private int member_receiver; //수신 회원번호
	private int member_sender; //발신 회원번호
	
	public int getMessage_no() {
		return message_no;
	}
	public void setMessage_no(int message_no) {
		this.message_no = message_no;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public String getMessage_date() {
		return message_date;
	}
	public void setMessage_date(String message_date) {
		this.message_date = message_date;
	}
	public int getMember_receiver() {
		return member_receiver;
	}
	public void setMember_receiver(int member_receiver) {
		this.member_receiver = member_receiver;
	}
	public int getMember_sender() {
		return member_sender;
	}
	public void setMember_sender(int member_sender) {
		this.member_sender = member_sender;
	}
	
	
}
