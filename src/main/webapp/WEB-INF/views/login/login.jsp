<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- reset -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
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
        	<form method="" action="">
        		<div class="login-form">
            		<label for="email">이메일</label>
                	<input type="email" name="email" id="email" class="form-controll" placeholder="이메일">
            	</div>
                <div class="login-form">
            		<label for="password">비밀번호</label>
                	<input type="password" name="password" id="password" class="form-controll" placeholder="비밀번호">
            	</div>
                <div class="login-check">
                	<label>
                    	<input type="checkbox" name="remember">&nbsp;로그인 기억하기
                    </label>
                </div>
                <div class="margin-15">
                	<input type="submit" name="loginBtn" class="btn btn-primary" value="로그인">
                </div>
                <div class="margin-15">
                	<input type="button" name="loginBtn" class="btn btn-facebook" value="페이스북 로그인">
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
	
</body>

</html>