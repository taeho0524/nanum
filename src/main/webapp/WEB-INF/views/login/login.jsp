<!-- 

	@FileName : login.jsp
	@Project : NANUM
	@Date : 2016. 6. 8.
	@Author : cutaehou



-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- reset -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">

<script src="${pageContext.request.contextPath}/resources/js/facebook.js" ></script>
<script src="${pageContext.request.contextPath}/resources/js/login.js" ></script>
<title>login</title>

</head>
<body>
	
	<div id="login-wrap">
		<div class="login-logo">
        	<a href="#">
            	<img src="${pageContext.request.contextPath}/resources/images/login-logo.png" alt="login-logo">
            </a>
        </div>		

		<div class="login-box">
		<c:url value="/login" var="loginURL"></c:url>
			<!-- @add shin d @date 0614-->
        	<form method="post" action="${loginURL}" id="loginform">
        		<div class="login-form">
            		<label for="email">이메일</label>
                	<input type="text" name="username" id="username" class="form-controll" placeholder="이메일" onkeyup="emailcheck()" onblur="validation()">
                	<div class="emailCheck"></div>
            	</div>
                <div class="login-form">
            		<label for="password">비밀번호</label>
                	<input type="password" name="password" id="password" class="form-controll" placeholder="비밀번호" onkeyup="emailcheck()">
                	<div class="passwordCheck"></div>
            	</div>
            	<!-- @add shin END-->
                <div class="login-check">
                	<label>
                    	<input type="checkbox" name="remember">&nbsp;로그인 기억하기
                    </label>
                </div>
                <div class="margin-15">
                	<input type="button" name="loginBtn" class="btn btn-primary" value="로그인" onclick="loginCheck()">
                </div>
                <!-- @add soomti @date 0614-->
                <div class="margin-15">
                	<input type="button" onclick="login()" name="loginBtn" class="btn btn-facebook" value="페이스북 로그인">
                </div>
                <!-- @END soomti @date 0614-->
            </form>
            <div class="row-login">
            	<div class="r-l-left">
                	<a href="signup.nn">무료 회원가입</a>
                </div>
                <div class="r-l-right">
                	<a href="forgot_account.nn">아이디/패스워드 찾기</a>
                </div>
            </div>
        </div>
		<div class="copyright">
            <h5>Copyright &copy; 2016 Nanum Inc. All rights reserved.</h5>
        </div>
        <div id="status"></div>
		
	</div>

</body>

</html>