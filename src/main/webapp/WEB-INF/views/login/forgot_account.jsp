<!-- 

	@FileName : forgot_account.jsp
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
	<title>NANUM 계정 관리</title>

</head>
<body>
	<div id="wrap">
        <div id="login-wrap">
            <div class="login-logo">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/resources/images/login-logo.png" alt="login-logo">
                </a>
            </div>
            
            
            <div class="login-box">
                <div class="margin-b15">
                    <h3>아이디 찾기</h3>
                </div>
                <form method="" action="">
                    <div class="login-form">
                        <label for="name">본명</label>
                        <input type="name" name="name" id="name" class="form-controll" placeholder="본명">
                    </div>
                    <div class="login-form">
                        <label for="password">비밀번호</label>
                        <input type="password" name="password" id="password" class="form-controll" placeholder="비밀번호">
                    </div>
                    <ul class="sub-list">
                        <li>NANUM 본인인증시 사용하였던 휴대전화로 가입 시 등록했던 이메일을 보내드립니다</li>	   
                    </ul>
                    <div class="margin-15">
                        <input type="submit" name="loginBtn" class="btn btn-primary" value="동의하고 이메일 인증하기">
                    </div>
                </form>
            </div>
            <div class="login-box">
                <div class="margin-b15">
                    <h3>비밀빈호 찾기</h3>
                </div>
                <form method="" action="">
                    <div class="login-form">
                        <label for="email">이메일</label>
                        <input type="email" name="email" id="email" class="form-controll" placeholder="이메일">
                    </div>
                    <ul class="sub-list">
                        <li>NANUM 가입 시 등록했던 이메일 입력시, 임시 비밀번호가 발급됩니다</li>	          
                    </ul>
                    <div class="margin-15">
                        <input type="submit" name="loginBtn" class="btn btn-primary" value="동의하고 이메일 인증하기">
                    </div>
                </form>
                
                <div class="row-login">
                    <div class="r-l-left">
                        <a href="#">무료 회원가입</a>
                    </div>
                    <div class="r-l-right">
                        <a href="#">아이디/패스워드 찾기</a>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <h5>Copyright &copy; 2016 Nanum Inc. All rights reserved.</h5>
            </div>
            
        </div>
	</div>
</body>
</html>