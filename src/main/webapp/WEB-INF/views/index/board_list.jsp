<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 

	@FileName : board_list.jsp
	@Project : NANUM
	@Date : 2016. 6. 13.
	@Author : cutaehou


-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
    <!-- reset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
</head>

<header class="background-list">
	<script type="text/javascript">
        	//main image chenge
			var arr = ['login-bg.jpg','login-bg-s.jpg','etc.jpg','banner_photo.jpg'];
			$(function(){
				var ranImages = Math.floor(Math.random() * arr.length);
				console.log('ranImages : ' + ranImages);
				var i = ranImages;
				$("header.background-list").css("background-image", "url(${pageContext.request.contextPath}/resources/images/" + arr[i] + ")").css('transition','ease-in-out 0.3s');
				setInterval(function(){
					i++;
					if(i == arr.length){
						i = 0;
					}
					$("header.background-list").css("background-image", "url(${pageContext.request.contextPath}/resources/images/" + arr[i] + ")").css('transition','ease-in-out 0.3s');
				},5000);
			});	
	</script>
	<div class="head-top">
    	<div class="head-logo">
        	<a href="index.nn">
        		<img src="${pageContext.request.contextPath}/resources/images/header-logo-white.png" alt="head-logo">
            </a>
        </div>
        <div class="head-right color-f">
        	<div><a href="login.nn">로그인</a></div>
            <div><a href="signup.nn">무료 회원가입</a></div>
            <div><a href="#">여긴 뭐 뿌릴지 생각중...</a></div>
        </div>
    </div>
    <div class="head-bottom-white">
    	<div class="head-category-white">
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
    <div class="head-middle">
    	<div class="row">
        	<div class="text-center color-f">
            	<h1>컴퓨터</h1>
                <h4 class="margin-10">인기 태그</h4>
                <div class="head-tag-top">
                	<script type="text/javascript">
						for(var i = 0; i < 10; i++){
							document.write('<div class="head-tag-list">'+
								'<a href="#" class="btn btn-category">All</a>'+
							'</div>');
						}
                    </script>
                </div>
            </div>
        </div>
        <!-- tab-->
        <div class="row">
        	<div id="tab-container">
                <div class="tab-header">
                    <div class="tab-right">
                        <div>지역</div>
                    </div>
                </div>
                    
                <div class="checkpage-box">
                	
                	<script type="text/javascript">
                    	$(function(){
							$(".checkpage-none").find('ul').css('display','none');
							var dropIndex;
							
							$(".checkpage-city button").click(function(e) {
                                $(this).siblings('ul').toggle();
                            });
							
							$(".checkpage-none button").click(function(e) {
                                $(this).siblings('ul').eq(dropIndex).toggle();
                            });
							
							$(".checkpage ul li").click(function(e) {
								var text = $(this).html();
								dropIndex = $(this).index();
								$(this).parent().siblings('button').html(text);
								
                                $(".checkpage button").siblings('ul').css('display','none');
                            });
							
							
						});
                    </script>
                    <!-- 1번째 페이지 -->
                    <div class="checkpage t1">
                    	<!--도/시-->
                    	<div class="inline row checkpage-city">
                            <button class="btn btn-block btn-category text-left">
                            	도 / 시 검색
                            </button>
                            <ul class="check-dropdown check-dropdown-menu">
                                <li><a href="#">서울특별시</a></li>
                                <li><a href="#">부산광역시</a></li>
                                <li><a href="#">인천광역시</a></li>
                                <li><a href="#">대구광역시</a></li>
                                <li><a href="#">광주광역시</a></li>
                                <li><a href="#">대전광역시</a></li>
                                <li><a href="#">울산광역시</a></li>
                                <li><a href="#">세종특별자치시</a></li>
                                <li><a href="#">경기도</a></li>
                                <li><a href="#">강원도</a></li>
                                <li><a href="#">충청남도</a></li>
                                <li><a href="#">충청북도</a></li>
                                <li><a href="#">경상북도</a></li>
                                <li><a href="#">경상남도</a></li>
                                <li><a href="#">전라북도</a></li>
                                <li><a href="#">전라남도</a></li>
                                <li><a href="#">제주도</a></li>
                            </ul>
                        </div>
                        
                        
                        <div class="inline row checkpage-none">
                            <button class="btn btn-block btn-category text-left">
                               시 / 군 / 구 검색
                            </button>
                            <ul class="check-dropdown check-dropdown-menu">
                                <li><a href="#">강남구</a></li>
                                <li><a href="#">강동구</a></li>
                                <li><a href="#">강북구</a></li>
                                <li><a href="#">강서구</a></li>
                                <li><a href="#">관악구</a></li>
                                <li><a href="#">광진구</a></li>
                                <li><a href="#">구로구</a></li>
                                <li><a href="#">금천구</a></li>
                                <li><a href="#">노원구</a></li>
                                <li><a href="#">도봉구</a></li>
                                <li><a href="#">동대문구</a></li>
                                <li><a href="#">동작구</a></li>
                                <li><a href="#">마포구</a></li>
                                <li><a href="#">서대문구</a></li>
                                <li><a href="#">서초구</a></li>
                                <li><a href="#">성동구</a></li>
                                <li><a href="#">성북구</a></li>
                                <li><a href="#">송파구</a></li>
                                <li><a href="#">양천구</a></li>
                                <li><a href="#">영등포구</a></li>
                                <li><a href="#">용산구</a></li>
                                <li><a href="#">은평구</a></li>
                                <li><a href="#">종로구</a></li>
                                <li><a href="#">중구</a></li>
                                <li><a href="#">중랑구</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">강서구</a></li>
                                <li><a href="#">금정구</a></li>
                                <li><a href="#">기장군</a></li>
                                <li><a href="#">남구</a></li>
                                <li><a href="#">동구</a></li>
                                <li><a href="#">동래구</a></li>
                                <li><a href="#">부산진구</a></li>
                                <li><a href="#">북구</a></li>
                                <li><a href="#">사상구</a></li>
                                <li><a href="#">사하구</a></li>
                                <li><a href="#">서구</a></li>
                                <li><a href="#">수영구</a></li>
                                <li><a href="#">연제구</a></li>
                                <li><a href="#">영도구</a></li>
                                <li><a href="#">중구</a></li>
                                <li><a href="#">해운대구</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">강화군</a></li>
                                <li><a href="#">계양구</a></li>
                                <li><a href="#">남구</a></li>
                                <li><a href="#">남동구</a></li>
                                <li><a href="#">동구</a></li>
                                <li><a href="#">부평구</a></li>
                                <li><a href="#">서구</a></li>
                                <li><a href="#">연수구</a></li>
                                <li><a href="#">웅진군</a></li>
                                <li><a href="#">중구</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">남구</a></li>
                                <li><a href="#">달서구</a></li>
                                <li><a href="#">달성군</a></li>
                                <li><a href="#">동구</a></li>
                                <li><a href="#">북구</a></li>
                                <li><a href="#">서구</a></li>
                                <li><a href="#">수성구</a></li>
                                <li><a href="#">중구</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">광산구</a></li>
                                <li><a href="#">남구</a></li>
                                <li><a href="#">동구</a></li>
                                <li><a href="#">북구</a></li>
                                <li><a href="#">서구</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">대덕구</a></li>
                                <li><a href="#">동구</a></li>
                                <li><a href="#">서구</a></li>
                                <li><a href="#">유성구</a></li>
                                <li><a href="#">중구</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">남구</a></li>
                                <li><a href="#">동구</a></li>
                                <li><a href="#">북구</a></li>
                                <li><a href="#">울주군</a></li>
                                <li><a href="#">중구</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <!-- <li><a href="#">세종대왕만세</a></li> -->
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">가평군</a></li>
                                <li><a href="#">고양시</a></li>
                                <li><a href="#">고양시 덕양구</a></li>
                                <li><a href="#">고양시 일산동구</a></li>
                                <li><a href="#">고양시 일산서구</a></li>
                                <li><a href="#">과천시</a></li>
                                <li><a href="#">광명시</a></li>
                                <li><a href="#">광주시</a></li>
                                <li><a href="#">구리시</a></li>
                                <li><a href="#">군포시</a></li>
                                <li><a href="#">김포시</a></li>
                                <li><a href="#">남양주시</a></li>
                                <li><a href="#">동두천시</a></li>
                                <li><a href="#">부천시</a></li>
                                <li><a href="#">부천시 소사구</a></li>
                                <li><a href="#">부천시 오정구</a></li>
                                <li><a href="#">부천시 원미구</a></li>
                                <li><a href="#">성남시</a></li>
                                <li><a href="#">성남시 분당구</a></li>
                                <li><a href="#">성남시 수정구</a></li>
                                <li><a href="#">성남시 중원구</a></li>
                                <li><a href="#">수원시</a></li>
                                <li><a href="#">수원시 권선구</a></li>
                                <li><a href="#">수원시 영통구</a></li>
                                <li><a href="#">수원시 장안구</a></li>
                                <li><a href="#">수원시 팔달구</a></li>
                                <li><a href="#">시흥시</a></li>
                                <li><a href="#">안산시</a></li>
                                <li><a href="#">안산시 단원구</a></li>
                                <li><a href="#">안산시 상록구</a></li>
                                <li><a href="#">안성시</a></li>
                                <li><a href="#">안양시</a></li>
                                <li><a href="#">안양시 동안구</a></li>
                                <li><a href="#">안양시 만안구</a></li>
                                <li><a href="#">양주시</a></li>
                                <li><a href="#">양평군</a></li>
                                <li><a href="#">여주시</a></li>
                                <li><a href="#">연천군</a></li>
                                <li><a href="#">오산시</a></li>
                                <li><a href="#">용인시</a></li>
                                <li><a href="#">용인시 기흥구</a></li>
                                <li><a href="#">용인시 수지구</a></li>
                                <li><a href="#">용인시 수지구</a></li>
                                <li><a href="#">용인시 처인구</a></li>
                                <li><a href="#">의왕시</a></li>
                                <li><a href="#">의정부시</a></li>
                                <li><a href="#">이천시</a></li>
                                <li><a href="#">파주시</a></li>
                                <li><a href="#">평택시</a></li>
                                <li><a href="#">포천시</a></li>
                                <li><a href="#">하남시</a></li>
                                <li><a href="#">화성시</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">강릉시</a></li>
                                <li><a href="#">동해시</a></li>
                                <li><a href="#">삼척시</a></li>
                                <li><a href="#">속초시</a></li>
                                <li><a href="#">원주시</a></li>
                                <li><a href="#">춘천시</a></li>
                                <li><a href="#">태백시</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">계룡시</a></li>
                                <li><a href="#">공주시</a></li>
                                <li><a href="#">논산시</a></li>
                                <li><a href="#">당진시</a></li>
                                <li><a href="#">보령시</a></li>
                                <li><a href="#">서산시</a></li>
                                <li><a href="#">아산시</a></li>
                                <li><a href="#">천안시</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">제천시</a></li>
                                <li><a href="#">청주시</a></li>
                                <li><a href="#">충주시</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">경산시</a></li>
                                <li><a href="#">경주시</a></li>
                                <li><a href="#">구미시</a></li>
                                <li><a href="#">김천시</a></li>
                                <li><a href="#">문경시</a></li>
                                <li><a href="#">상주시</a></li>
                                <li><a href="#">안동시</a></li>
                                <li><a href="#">영주시</a></li>
                                <li><a href="#">영천시</a></li>
                                <li><a href="#">포항시</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">거제시</a></li>
                                <li><a href="#">김해시</a></li>
                                <li><a href="#">밀양시</a></li>
                                <li><a href="#">사천시</a></li>
                                <li><a href="#">양산시</a></li>
                                <li><a href="#">진주시</a></li>
                                <li><a href="#">창원시</a></li>
                                <li><a href="#">통영시</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">군산시</a></li>
                                <li><a href="#">김제시</a></li>
                                <li><a href="#">남원시</a></li>
                                <li><a href="#">익산시</a></li>
                                <li><a href="#">전주시</a></li>
                                <li><a href="#">정읍시</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">광양시</a></li>
                                <li><a href="#">나주시</a></li>
                                <li><a href="#">목포시</a></li>
                                <li><a href="#">순천시</a></li>
                                <li><a href="#">여수시</a></li>
                            </ul>
                            <ul class="check-dropdown check-dropdown-menu">
                               <li><a href="#">서귀포시</a></li>
                                <li><a href="#">제주시</a></li>
                            </ul>
                        </div>                  
                    </div>
                            
                    <!-- 버튼 -->
                    <div class="checkpage-btn">Search</div>
                </div>
            </div>
        </div>
         <!-- tab-->
    </div>
</header>

<!-- container -->
<div class="container-body">
	<div class="category-top">
        	<ul>
            	<li class="category-top-selected">전체</li>
                <li>최신순</li>
                <li>인기순</li>
                <li>조회순</li>
                <li>후기순</li>
                <li>거리순</li>
            </ul>
	</div>
	<div class="container">
    	
        <!-- 나눔-->
		<div class="row margin-10">
			<div class="rows margin-0-auto">
            
            	<!--반복으로 뿌려주기-->
				<script type="text/javascript">
						for(var i = 0; i < 20; i ++){
						document.write(
						'<div class="category-content">'+
                           '<div class="margin-20 shadow-box">'+
                                '<a href="#">'+
                                    '<div class="category-img">'+
                                        '<div class="category-price">'+
                                            '<span>&#8361;&nbsp;5,000</span>'+
                                        '</div>'+
                                        '<img src="${pageContext.request.contextPath}/resources/images/login-logo.png" alt="">'+
                                    '</div>'+
                                '</a>'+
                                '<div class="padding-10">'+
                                    '<h5 class="category-content-title">'+
                                        '<a href="#" target="_blank" class="color-3">'+
                                            '워드프레스를 적용하여 저렴하게 홈페이지를 만들어 드립니다'+
                                        '</a>'+
                                    '</h5>'+
                                    '<div class="margin-15 position-relative">'+
										'<div class="category-profile">'+
                                            '<div class="position-relative">'+
                                                '<div class="category-profile-body"></div>'+
                                                '<div class="category-profile-img">'+
                                                    '<img src="${pageContext.request.contextPath}/resources/images/login-logo.png" alt="">'+
                                                '</div>'+
                                            '</div>'+
                                        '</div>'+
                                        '<h6 class="category-id">'+
                                            '<a href="#" class="color-8">'+
                                               'TAEHO'+
                                            '</a>'+
                                        '</h6>'+
                                        '<div class="category-star">'+
                                            '<h6>'+
                                                '<div class="inline-block color-8">'+
                                                    '<div>★★★★★</div>'+
                                                '</div>'+
                                                '<div class="inline-block color-8">(0)</div>'+
                                            '</h6>'+
                                        '</div>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                        '</div>');
						}
                        /* 반복으로 뿌려주기 EL + JSTL 로 진우야 */
				</script>
                      
			</div>                 
		</div>
		<!-- 나눔-->
       
       	<div class="category-paging">
        	<div class="page-result">19 - 36 of 89 Search Result(s)</div>
        	<div class="page-pre"><</div>
        	<div class="page-btn">1</div>
            <div class="page-btn page-selected-btn">2</div>
            <div class="page-btn">3</div>
            <div class="page-btn">4</div>
            <div class="page-next">></div>
        </div>
    </div>
</div>
<!-- container -->