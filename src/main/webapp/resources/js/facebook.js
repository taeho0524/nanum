/**
 * @file:facebook.js
 * @date:2016/06/09
 * @author:수민
 * @content:자바스크립트 파일 
 */
		// initialize and setup facebook js sdk
		window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '861137850675010', //내 앱 아이디
		      xfbml      : true,		
		      version    : 'v2.5'
		    });
		    
		};
		
		
		(function(d, s, id){
		    var js, fjs = d.getElementsByTagName(s)[0];
		    if (d.getElementById(id)) {return;}
		    js = d.createElement(s); js.id = id;
		    js.src = "//connect.facebook.net/ko_KR/sdk.js"; //언어 설정
		    fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
		
		// login with facebook with extra permissions
		function login() {
			FB.login(function(response) {
				if (response.status === 'connected') 
				{
					alert('haha');
					
					location.href="board_request.nn";  
		    		document.getElementById('status').innerHTML = 'We are connected.';
		    		document.getElementById('login').style.visibility = 'hidden';
		    	} else if (response.status === 'not_authorized') {
		    		document.getElementById('status').innerHTML = 'We are not logged in.'
		    	} else {
		    		document.getElementById('status').innerHTML = 'You are not logged into Facebook.';
		    	}
			}, {scope: 'email'});
		}
		
		function signup() {
			
			//로그인 창 생성한다.
			FB.getLoginStatus(function(response) {
				//connected 페이스북 세션이 존재 
				//비 사용자:권한요청
				//사용자:걍로그인되어 index.jsp로 보내준다...
				//connect 연결 
				
				if (response.status === 'connected') {
			        FB.api('/me', function(user) {
			            if (user) {
			                var image = document.getElementById('image');
			                image.src = 'http://graph.facebook.com/' + user.id + '/picture';
			                var name = document.getElementById('name');
			                name.innerHTML = user.name
			                var id = document.getElementById('id');
			                id.innerHTML = user.id
			            }
			        });    
			         
			    } else if (response.status === 'not_authorized') {
			        
			    } else {
			    
			    }
			});

		
			FB.login(function(response) {
				
				if (response.status === 'connected') 
				{
					alert('두번째로여기들어오'+'login! gogo board_request');
					location.href="board_request.nn";  
					
		    		document.getElementById('status').innerHTML = 'We are connected.';
		    		document.getElementById('login').style.visibility = 'hidden';
		    		
		    	} 
				else if (response.status === 'not_authorized')
				{
		    		document.getElementById('status').innerHTML = 'We are not logged in.'
		    	} 
				else 
				{
		    		document.getElementById('status').innerHTML = 'You are not logged into Facebook.';
		    	}
			}, 
			{scope: 'email'});
			alert('get ㅇ우우우우'+'이게 첫번째로 들어온다.');
			
		FB.api('/me', 'GET', {fields: 'email'},function(user) {
				document.getElementById('status').innerHTML = user.name;
				alert(user.email);
				location.href="signup.nn";  
			});
		}
		// getting basic user info
		function getInfo() {
			alert('getinfo');
			FB.api('/me', 'GET', {fields: 'email'},function(response) {
				//document.getElementById('status').innerHTML = response.name;
				alert(response.email);
			});
		}