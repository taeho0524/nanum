// JavaScript Document
/*

@add script
@Project : index.jsp
@Date : 2016. 6. 10.
@Author : cutaeto
*/
$(document).ready(function(e) {
	
	//scroll head 스크롤에 따른 헤더영역 표시
	$(window).scroll(function(e) {
		if($(this).scrollTop() >= 500){
			$(".head-scroll-box").css({
				'margin-top':'0px'
			});
		}else if($(this).scrollTop() < 500){
			$(".head-scroll-box").css({
				"margin-top" : "-60px"							
			});
		}
	});
	
	// 인덱스 페이지 에서 문구 자동 슬라이드
	setInterval(function(){
		$(".head-index-slider").animate({
			right : '100%'
		},800,function(){
			$(".head-index-slider>div:first-child").appendTo(".head-index-slider");
			$(".head-index-slider").css('right','0');
		});
	},5000);
	
	
	//자동 실행
	//추후에 버튼을 눌렀을때에는 정지 하게 만들기 
	//최태호 16.06.15
	var setIn = setInterval(function(){
		$(".btn-next").trigger('click');	
	},5000);
	
	//slide btn
	$(".btn-pre").click(function(){
		clearInterval(setIn);
		$(this).attr('disabled','disabled');
		$(".review-slider").animate({
			marginLeft : '100%'
		},500, "swing",function(){
			$(".review-slider>div").last().prependTo(".review-slider");
			$(".review-slider").css("margin-left", "0px");
			$(".btn-pre").removeAttr('disabled');
		});
	});
	
	
	$(".btn-next").click(function(){
		clearInterval(setIn);
		$(this).attr('disabled','disabled');
		$(".review-slider").animate({
			marginLeft : '-100%'
		},500, "swing",function(){
			$(".review-slider>div").eq(0).appendTo(".review-slider");
			$(".review-slider").css("margin-left","0px");
			$(".btn-next").removeAttr('disabled');
		});
	});
	
	
	
	
	
	
	
});