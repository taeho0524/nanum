/*
	@FileName : Location.java
	@Project : NANUM
	@Date : 2016. 6. 8.
	@Author : 한수민
*/
package com.nanum.domain;

/*  	 
	@Class : Location
	@Date : 2016. 6. 8.
	@Author: 한수민

//관련된 테이블 생성문
CREATE TABLE LOCATION (
	location_no NUMBER NOT NULL, 
	location_wedo NUMBER NOT NULL,   
	location_kyoungdo NUMBER NOT NULL,   
	location_name VARCHAR2(50) NOT NULL   
);
*/

public class Location{
	
	private int location_no; //위치정보 번호 
	private int location_wedo; //위도
	private int location_kyoungdo; //경도
	private String location_name; //지역명
	
	/*
	Update
	
	@Date : 2016. 6. 8.
	@Author : 신진우
	@Contents : DTO getter,setter 추가
	
	*/
	
	public int getLocation_no() {
		return location_no;
	}
	public void setLocation_no(int location_no) {
		this.location_no = location_no;
	}
	public int getLocation_wedo() {
		return location_wedo;
	}
	public void setLocation_wedo(int location_wedo) {
		this.location_wedo = location_wedo;
	}
	public int getLocation_kyoungdo() {
		return location_kyoungdo;
	}
	public void setLocation_kyoungdo(int location_kyoungdo) {
		this.location_kyoungdo = location_kyoungdo;
	}
	public String getLocation_name() {
		return location_name;
	}
	public void setLocation_name(String location_name) {
		this.location_name = location_name;
	}
}