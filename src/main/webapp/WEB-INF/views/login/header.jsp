<!-- 

	@FileName : header.jsp
	@Project : NANUM
	@Date : 2016. 6. 8.
	@Author : 최태호

-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- reset -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">

<title>Insert title here</title>
</head>
<header>
	<div class="head-top">
    	<div class="head-logo">
        	<a href="#">
        		<img src="images/header-logo.png" alt="head-logo">
            </a>
        </div>
        <div class="head-search">
        	<form action="" method="">
            	<div class="head-search-box">
                	<span>
                    	<input type="image" class="sub-img" src="images/search.png" width="20">
                    	<!--<img src="images/search.png" alt="search">-->
                    </span>
                
        			<input type="text" class="form-controll" placeholder="검색어를 입력해 주세요">
                </div>
            </form>
        </div>
        <div class="head-right">
        	<div><a href="#">로그인</a></div>
            <div><a href="#">무료 회원가입</a></div>
            <div><a href="#">여긴 뭐 뿌릴지 생각중...</a></div>
        </div>
    </div>
    <div class="head-bottom">
    	<div class="head-category">
        	<ul>
            	<li><a href="#"><h5>뷰티</h5></a></li>
                <li><a href="#"><h5>스포츠/레져</h5></a></li>
                <li><a href="#"><h5>미디어</h5></a></li>
                <li><a href="#"><h5>예술/공예</h5></a></li>
                <li><a href="#"><h5>패션</h5></a></li>
                <li><a href="#"><h5>생활</h5></a></li>
                <li><a href="#"><h5>컴퓨터</h5></a></li>
                <li><a href="#"><h5>문서</h5></a></li>
                <li><a href="#"><h5>기타</h5></a></li>
            </ul>
        </div>
    </div>
</header>
