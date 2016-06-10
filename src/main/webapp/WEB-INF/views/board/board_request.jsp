<!-- 

	@FileName : board_request.jsp
	@Project : NANUM
	@Date : 2016. 6. 8.
	@Author : 최태호

-->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>NANUM 도와주세요</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
    
	<style type="text/css">
		body{overflow-y:scroll;}
    	.container-body{background-color:#f1f1f1;}
		.container-body:after{display:block; content:""; clear:both;}
		.container{width:1024px; margin:0 auto;}
		
		.container-left{width:75%;}
		
		.c-l-top{width:100%; padding-top:30px;}
		.container-bottom{margin-top:30px;}
		.con-body{padding:30px 15px;}
		
		.new-section{padding-bottom: 30px; margin-bottom: 30px; border-bottom: dotted #ccc 1px;}
		.row:after{content:""; display:block; clear:both;}

		.margin-30{margin-top:30px;}
		.margin-15{margin-top:15px;}
		.form-controll{box-shadow: 0 1px 2px #ccc; border: 1px solid #ccc; transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s; width:100%; padding:6px 12px; max-width:100%; box-sizing:border-box;}
		.shadow-box{background: #fff; border-left: solid #e5e5e5 1px;  border-right: solid #e5e5e5 1px;
    border-top: solid #e5e5e5 1px; box-shadow: 0 1px 2px #ccc;}
		
		.row{position:relative;}
		.col-left{width:25%; position: relative; min-height: 1px;}
		.col-left h3{font-weight:400;}
		.new-must{padding: 3px 5px; font-size: 11px; color: #f3865b; border: 1px solid #f3865b;}
		.new-select{padding: 3px 5px; font-size: 11px; color: #888; border: 1px solid #888;}
		.col-right{position:absolute; top:0; right:0; width:75%; padding:0 15px;}
		.col-right>div{box-sizing:border-box;}
		.request-title{height:40px;}
		.col-right h5{color:#BBBBBB; font-weight:400;}
		.col-right h6{position:absolute; top:10px; left:10px; color:#BBBBBB; font-weight:400;}
		.sub-list-box{position:relative;}
		.list-round{border-radius:500px; background:#F1F1F1; width:3px; height:3px; position:absolute; top:15px; left:2px;}
		
		
		.file-input-wrapper{overflow: hidden; position: relative; cursor: pointer; z-index: 1;}
		.float-l{display:inline-block; font-size:14px;}
		.form-file{background:none; border:0;}
		
		.request-submit{text-align:center;}
		.request-submit button{padding: 10px 16px; font-size: 16px; line-height: 1.3333333; border-radius: 6px;}
		.btn-primary{color:#FFFFFF; line-height:1.2; background:#FF4B4E; cursor:pointer;}
		.new-next{padding-bottom:60px;}
    </style>
</head>
<div class="container-body">
	<div class="container">
    	<div class="container-left">
        	<div class="c-l-top">
            	<h2>나눔 요청 등록</h2>
            </div>
            <div class="container-bottom">
            	<form action="" method="">
                    <div class="shadow-box con-body">  
                        <div class="new-section">
                            <div class="row">
                                 <div class="col-left">
                                     <h3>나눔 요청 제목</h3>
                                     <div class="margin-15">
                                         <span class="new-must">필수</span>
                                     </div>
                                 </div>
                                 <div class="col-right">
                                     <div>
                                         <input type="text" class="form-controll" name="request-title">
                                     </div>
                                     <div class="sub-list-box">
                                         <div class="list-round"></div>
                                         <h6>최대글자는 30자입니다. (현재 0 자)</h6>
                                     </div>
                                 </div>
                            </div>
                        </div>
                        
                        <div class="new-section">
                            <div class="row">
                                 <div class="col-left">
                                     <h3>카테고리</h3>
                                     <div class="margin-15">
                                         <span class="new-must">필수</span>
                                     </div>
                                 </div>
                                 <div class="col-right">
                                 	 <div>
                                     	 <h5>상위 카테고리</h5>
                                     </div>
                                     <div class="margin-15">
                                         <select class="form-controll" style="width:40%;">
                                         	<option>선택하세요</option>
                                         	<option>뷰티</option>
                                            <option>스포츠/레져</option>
                                            <option>미디어</option>
                                            <option>예술/공</option>
                                            <option>패션</option>
                                            <option>생활</option>
                                            <option>컴퓨터</option>
                                            <option>문서</option>
                                            <option>기타</option>
                                         </select>
                                     </div>
                                 </div>
                            </div>
                        </div>


						<div class="new-section">
                            <div class="row">
                                 <div class="col-left">
                                     <h3>마감일</h3>
                                     <div class="margin-15">
                                         <span class="new-must">필수</span>
                                     </div>
                                 </div>
                                 <div class="col-right">
                                     <div>
                                         <input style="width:40%;" type="text" class="form-controll" name="request-title" value="용진이형 날짜 넣어주세용">
                                     </div>
                                     <div class="sub-list-box">
                                         <div class="list-round"></div>
                                         <h6>최대글자는 30자입니다. (현재 0 자)</h6>
                                     </div>
                                 </div>
                            </div>
                        </div>


						<div class="new-section">
                            <div class="row">
                                 <div class="col-left">
                                     <h3>희망가격</h3>
                                     <div class="margin-15">
                                         <span class="new-must">필수</span>
                                     </div>
                                 </div>
                                 <div class="col-right">
                                 	 <div class="float-l float-left">&#8361;&nbsp;</div>
                                     <div class="float-l">
                                         <input type="text" class="form-controll" name="request-title">
                                     </div>
                                     <div class="float-l float-right">&nbsp;원</div>
                                     <div class="sub-list-box">
                                         <div class="list-round"></div>
                                         <h6>희망가격을 잘 입력하셔야 성사 될 가능성이 높습니다.</h6>
                                     </div>
                                 </div>
                            </div>
                        </div>
                        
                        <div class="new-section" style="height:270px;">
                            <div class="row">
                                 <div class="col-left">
                                     <h3>도움내용</h3>
                                     <div class="margin-15">
                                         <span class="new-must">필수</span>
                                     </div>
                                 </div>
                                 <div class="col-right">
                                 	 <div>
                                    	 <textarea rows="12" class="form-controll"></textarea>
                                     </div>
                                     <div class="sub-list-box">
                                         <div class="list-round"></div>
                                         <h6>최소 30글자 이상 입력해주세요.</h6>
                                     </div>
                                 </div>
                            </div>
                        </div>


						<div class="new-section">
                            <div class="row">
                                 <div class="col-left">
                                     <h3>첨부파일</h3>
                                     <div class="margin-15">
                                         <span class="new-select">선택</span>
                                     </div>
                                 </div>
                                 <div class="col-right">
                                     <a href="#" class="file-input-wrapper">
                                     	<input type="file" id="file-upload" class="form-file" name="file" data-filename-placement="inside">
                                     </a>
                                     <div class="sub-list-box">
                                         <div class="list-round"></div>
                                         <h6>디자인은 나중에 바꾸기</h6>
                                     </div>
                                 </div>
                            </div>
                        </div>
               		 </div>
                     <div class="request-submit margin-30 new-next">
                     	<button class="btn btn-primary" type="submit">요청하기</button>
                     </div>
                </form>
            </div>
        </div>
    </div>
</div>