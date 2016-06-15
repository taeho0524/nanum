<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 

	@FileName : index.jsp
	@Project : NANUM
	@Date : 2016. 6. 13.
	@Author : cutaehou


-->
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <!-- reset -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/index.js"></script>
<title>Insert title here</title>
</head>
<body>
   <header class="background-index">
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
       <div class="head-index-middle">
          <div class="head-index-text">
              <h1>
                   멋진 문구 넣기 NANUM EagleFive
               </h1>
               <div>
                  멋진 내용 넣기 멋진 내용 넣기 
               </div>
           </div>
       </div>
       <div class="position-relative b-f">
          <div class="head-index-search">
              <div class="head-index-cotainer margin-0-auto">
                  <div class="row margin-30">
                      <div class="width-30 color-f inline-block float-left">
                          <div class="position-relative overflow-h">
                              <!-- slide-->
                               <div class="head-index-slider">
                                  <div class="item active">
                                      <div class="inline-block">
                                          <div class="index-search-icon"><img src="${pageContext.request.contextPath}/resources/images/bottom_notice-w.png" alt=""></div>
                                       </div>
                                       <div class="inline-block color-f">
                                          <div>태호 디자인</div>
                                           <div class="">
                                              5000만명의 태호 디자이너와 함께합니다
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item">
                                      <div class="inline-block">
                                          <div class="index-search-icon"><img src="${pageContext.request.contextPath}/resources/images/bottom_notice-w.png" alt=""></div>
                                       </div>
                                       <div class="inline-block color-f">
                                          <div>태호 디자인</div>
                                           <div class="">
                                              4000만명의 태호 디자이너와 함께합니다
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item">
                                      <div class="inline-block">
                                          <div class="index-search-icon"><img src="${pageContext.request.contextPath}/resources/images/bottom_notice-w.png" alt=""></div>
                                       </div>
                                       <div class="inline-block color-f">
                                          <div>태호 디자인</div>
                                           <div class="">
                                              3000만명의 태호 디자이너와 함께합니다
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item">
                                      <div class="inline-block">
                                          <div class="index-search-icon"><img src="${pageContext.request.contextPath}/resources/images/bottom_notice-w.png" alt=""></div>
                                       </div>
                                       <div class="inline-block color-f">
                                          <div>태호 디자인</div>
                                           <div class="">
                                              2000만명의 태호 디자이너와 함께합니다
                                           </div>
                                       </div>
                                   </div>
                                  
                               </div>
                           </div>
                       </div>
                       <div class="width-70 inline-block float-right text-right">
                          <form action="" method="" id="index-search-form">
                              <div class="inline-block">
                                  <h4>
                                      <input id="" name="" class="index-search-input" placeholder="어떤 서비스가 필요하신가요?">
                                   </h4>
                               </div>
                               <div class="index-search-submit inline-block">
                                  <button class="index-search-btn btn-primary" style="font-size: 16px;">서비스 검색</button>
                               </div>
                           </form>
                       </div>
                   </div>
               </div>
           </div>
       </div>
       <div class="head-scroll-box">
          <div class="head-top-scroll">
               <div class="head-logo">
                   <a href="index.nn">
                       <img src="${pageContext.request.contextPath}/resources/images/header-logo.png" alt="head-logo">
                   </a>
               </div>
               <div class="head-search">
                   <form action="" method="">
                       <div class="head-search-box">
                           <span>
                               <input type="image" class="sub-img" src="${pageContext.request.contextPath}/resources/images/search.png" width="20">
                               <!--<img src="images/search.png" alt="search">-->
                           </span>
                       
                           <input type="text" class="form-control" placeholder="검색어를 입력해 주세요">
                       </div>
                   </form>
               </div>
               <div class="head-right">
                    <div><a href="login.nn">로그인</a></div>
               		<div><a href="signup.nn">무료 회원가입</a></div>
               		<div><a href="#">여긴 뭐 뿌릴지 생각중...</a></div>
               </div>
            </div>
       </div>
   </header>
   <div class="container-body">
      <div class="container">
          <!-- menu -->
           <div class="container-text row margin-55">
              <div class="text-center">
                  <h1>최근에 올라온 글 멋지게 글</h1>
               </div>
               <div class="margin-10">
                  <h5>상세 글을 설명</h5>
               </div>
               <div class="margin-15">
                  <div class="inline-block"></div>
                   <div class="inline-block">
                      
                   </div>
                   <div class="inline-block"></div>
               </div>
           </div>
           <div class="row container-list margin-30">
              <ul>
                  <li><a class="container-list-selected" href="#"><h5>뷰티</h5></a></li>
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
           
          <!-- 나눔-->
         <div class="row margin-20">
            <div class="rows margin-0-auto">
               
                  <!--반복으로 뿌려주기-->
               <script type="text/javascript">
                     for(var i = 0; i < 8; i ++){
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
                           // 반복으로 뿌려주기 EL + JSTL 로 진우야
               </script>
                         
            </div>                 
         </div>
         <div class="row margin-30 container-btn">
            <a href="board_list.nn" class="btn btn-block btn-primary">더보기</a>
         </div>
         <!-- 나눔-->
       </div>
       
       
       <!-- 뒷 배경 -->
       <div class="index-back-photo"></div>
       
       <!-- 구매 후기 -->
	   <div class="index-white">
	    	<div class="container">
	    		<div class="row">
	    			<div class="margin-70">
	    				<div class="review-box">
	    					<h2 class="text-center">구매후기</h2>
	    					<div class="row width-100">
	    						<div class="review-slider row">
	    							
	    							<!-- 여기서 부터 10개 반복 -->
	    							<script type="text/javascript">
	    							for(var i = 0; i < 10; i++){
	    							document.write(
	    							'<div class="text-center">'+
	    								'<div class="row">'+
	    									'<div class="review-top">'+
	    										'<div class="padding-100">'+
	    											'<h4 class="color-8">'+
														'처음 주문 해 보는 거였는데 진우신이 망쳐 주셔서 신났어요!!'+
														'<br> 후기가 없어서 약간 걱정은 했는데 진우신이 다 입력을 한데요!!!'+
														'<br> 정성이 들어간 작업물 감사드립니다.'+
													'</h4>'+
													'<div class="margin-0-auto review-star">'+
														'<h6 class="margin-30">'+
															'<div>★★★★★</div>'+
														'</h6>'+
													'</div>'+
													'<div class="font-12">'+
														'<b>jinwooshin'+i+'</b>'+
													'</div>'+
													'<div class="text-center color-8 font-12">'+
														'16.06.14'+
													'</div>'+
												'</div>'+
	    									'</div>'+
	    									'<div class="review-bottom">'+
	    										'<div class="inline-block">'+
	    											'<a href="#">'+
	    												'<img alt="" src="${pageContext.request.contextPath}/resources/images/plus.jpg">'+
	    											'</a>'+
	    										'</div>'+
	    										'<div class="inline-block">'+
	    											'<h5>'+
	    												'<a href="#" class="color-3">'+
	    													'고퀄리티 진우신'+
	    												'</a>'+
	    											'</h5>'+
	    											'<h6>'+
	    												'<div class="text-left">'+
		    												'<a href="#" class="color-3">'+
		    													'고퀄리티 진우신'+
		    												'</a>'+
	    												'</div>'+
	    											'</h6>'+
	    										'</div>'+
	    									'</div>'+
	    								'</div>'+
	    							'</div>');
	    							}
	    							</script>
	    							<!-- 여기서 부터 10개 반복 -->
	    							
	    							
	    						</div>
	    					</div>
	    				</div>
	    				
	    				
	    				<div class="review-btn-box">
	    					<div>
	    						<button class="btn-pre">
	    							<img src="${pageContext.request.contextPath}/resources/images/btn_pre.png" alt="">
	    						</button>
	    						<button class="btn-next">
	    							<img src="${pageContext.request.contextPath}/resources/images/btn_next.png" alt="">
	    						</button>
	    					</div>
	    				</div>
	    			</div>
	    		</div>
	    	</div>
	   </div>
       
      
       
       
       
       
       
       
       <!-- index-section-title-->
      <div class="index-section-title">
         <div class="row">
            <div>
               <div class="text-center">
                  <a href="#" class="color-3">
                     <img src="${pageContext.request.contextPath}/resources/images/main_1.png" alt="">
                  </a>
                  <h4 class="margin-30">
                     <b>태호가 도와드려요</b>
                  </h4>
                  <h5 class="margin-10">
                     태호가 도와드려요 도와드려요<br>
                     태호가 도와줄께요태호가 도와드려요
                  </h5>
               </div>
            </div>
            <div>
               <div class="text-center">
                  <a href="#" class="color-3">
                     <img src="${pageContext.request.contextPath}/resources/images/main_1.png" alt="">
                  </a>
                  <h4 class="margin-30">
                     <b>태호가 도와드려요</b>
                  </h4>
                  <h5 class="margin-10">
                     태호가 도와드려요 도와드려요<br>
                     태호가 도와줄께요태호가 도와드려요
                  </h5>
               </div>
            </div>
            <div>
               <div class="text-center">
                  <a href="#" class="color-3">
                     <img src="${pageContext.request.contextPath}/resources/images/main_1.png" alt="">
                  </a>
                  <h4 class="margin-30">
                     <b>태호가 도와드려요</b>
                  </h4>
                  <h5 class="margin-10">
                     태호가 도와드려요 도와드려요<br>
                     태호가 도와줄께요태호가 도와드려요
                  </h5>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>