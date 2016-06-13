<!-- 

	@FileName : signup.jsp
	@Project : NANUM
	@Date : 2016. 6. 8.
	@Author : 최태호

-->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NANUM 회원가입</title>
<!-- reset -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
<script src="${pageContext.request.contextPath}/resources/js/facebook.js" ></script>
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
      
                <a class="btn btn-facebook fb_btn" onclick="signup()" >&nbsp;&nbsp;페이스북으로 빠른 가입</a>
                <div class="login-text">
                   <div></div>
                   <p>또는</p>
                </div>
                
                <!-- 
					@Date : 2016. 6. 13.
					@Author : 한수민 - 회원가입 유효성 체크
					@join sqlmapping
				 -->
                <form method="POST" action="${pageContext.request.contextPath}/joinus/registerMember">
                    <div class="login-form" id="email-form">
                        <label for="email">이메일</label>
                        <input type="email" name="email" id="email" class="form-controll" placeholder="이메일" value="">
                        <div class="email-msg"></div>
                    </div>
                    <div class="login-form">
                        <label for="password">비밀번호</label>
                        <input type="password" name="password" id="password" class="form-controll" placeholder="비밀번호">
                    </div>
                    <div class="login-form">
                        <label	 for="password">비밀번호 확인</label>
                        <input type="password" name="password-confirm" id="password-confirm" class="form-controll" placeholder="비밀번호 확인">
                    </div>
                    <div class="shadow-box">
                    	<div class="welcom-check">
                        	개인정보 수집·이용 동의
                        </div>
                        <div class="welcom-list">
                        	<div class="login-agree">
                            	① 목적 및 항목<br/><br/>
				                        회사는 다음과 같은 목적으로 개인정보를 수집하여 이용할 수 있습니다.<br/>                    
				                - 이메일주소: 회사가 제공하는 서비스의 이용에 따르는 본인확인 등<br/><br/>
				                ② 이용기간<br/>
				                        수집된 개인정보의 보유•이용기간은 서비스이용계약체결(회원가입)시부터 서비스이용계약해지(탈퇴신청, 직권탈퇴 포함)입니다. 또한 동의 해지 시 회사는 이용자의 개인정보를 상기 명시한 정보보유 사유에 따라 일정 기간 저장하는 자료를 제외하고는 지체 없이 파기하며 개인정보취급이 제3자에게 위탁된 경우에는 수탁자에게도 파기하도록 지시합니다.<br/>
                            </div>
                        </div>
                    </div>
                    <div class="margin-15">
                        <input type="submit" name="loginBtn" class="btn btn-primary" value="동의하고 이메일 인증하기">
                    </div>
                </form>
                <ul class="sub-list">
                    <li>[이메일로 인증하기]가 완료되기 이전에는, 이메일주소가 수집되지 않습니다</li>	
                    <li>인증 이메일 본문의 '인증하기'를 클릭해주세요</li>
                    <li>'동의하고 가입완료' 버특을 클릭하셔야 회원가입이 완료됩니다</li>            
                </ul>
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
            <div id="status"></div>
            
        </div>
	</div>
	
	<!-- 

	@스크립트 추가
	@Project : signup.jsp
	@Date : 2016. 6. 13.
	@Author : 한수민

	-->
	<script type="text/javascript">

		$("#email").blur(function() {
			$.ajax({
				url : "duplicationCheck.nn",
				type : "get",
				dataType:"json",
				data : { email :$("#email").val()},
				success : function(result) {
					
					if(result == false){
						$(".email-msg").html("이미 가입되어 있는 이메일이거나 잘못된 이메일 형식입니다");
						$("#email").val("");
						$("#email").focus();
						
					}else{
						var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
							
						if(!regExp.test($("#email").val())){  
						    alert("잘못된 이메일 형식입니다.");  
							$("#email").val("");
							$("#email").focus();
						}else{ 
							$(".email-msg").html("사용가능한 이메일입니다");
						}  
					}
				},
				error : function(error) {
					alert(error.statusText);
				}
			});
			return false;
		});
		</script>
</body>
</html>