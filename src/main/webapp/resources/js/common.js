// JavaScript Document
/*

@스크립트 추가
@Project : common
@Date : 2016. 6. 10.
@Author :cutaeho

*/

//page 로딩시 

//root ContextPath
function getContextPath() {
	var hostIndex = location.href.indexOf(location.host) + location.host.length;
	return location.href.substring(hostIndex, location.href.indexOf('/',
			hostIndex + 1));
};

function loading_st(){ 
    /*var ct_left = (parseInt(window.screen.width)-400)/2; 
    var ct_top = (parseInt(window.screen.height))/3; */
    //alert(ct_left);
    //alert(ct_top);
/*    
 * 로딩시 뒤에 화면 배경 넣은
 * layer_str = "<div id='loading_layer' style='width:100%; background-color:rgba(255,255,255,0.80); height:100%; position:fixed; top:0; left:0; z-index:999;'>" +
    		"<div style='position:absolute; left:50%; margin-left:-50px; margin-top:50px; top:40%; width:100px; z-index:1000;'><img style='width:100%;' src='"+ getContextPath() +"/resources/images/ajax-loader.gif'></div></div>" ;*/
   
	//로딩만
	layer_str = "<div id='loading_layer' style='position:absolute; left:50%; margin-left:-50px; margin-top:50px; top:40%; width:100px; z-index:1000;'><img style='width:100%;' src='"+ getContextPath() +"/resources/images/ajax-loader.gif'></div>" 
	
	document.write(layer_str); 
} 
function loading_ed(){ 
	var ta = document.getElementById('loading_layer'); 
	ta.style.display='none';
    
} 
loading_st(); 
window.onload = loading_ed;



$(document).ready(function(e) {
	
	
	
	
	
	//나눔 등록 글
	$('.board-write1').show();//첫번째 탭 보임
	$('.board-write2 , .board-write3').hide();
	//첫번째 탭이 선택된 모양 - 생략^^
				
	$('#board-write-nav>div>ul>li>a').on('click',function(){
		index = $(this).parent().index() + 1;
		$('#board-write-nav>div>ul>li>a').removeClass('active')
		$('.board-panel').hide();
		$('.board-write'+ index).fadeIn();
		$(this).addClass('active');
	});
});


/*//page 로딩시 
function loading_st(){ 
    var ct_left = (parseInt(window.screen.width)-450)/2; 
    var ct_top = (parseInt(window.screen.height))/3; 
    layer_str = "<div id='loading_layer' style='position:absolute; font-size:12px; left:"+ct_left+"px; top:"+ct_top+"px; width:400px; height:; padding:50px; text-align:center; vertical-align:middle; z-index:1000; font-weight: bold;'><img src='"+ getContextPath() +"/resources/images/loading.gif'></div>" 
    document.write(layer_str); 
} 
function loading_ed(){ 
    var ta =document.getElementById('loading_layer'); 
    ta.style.display='none'; 
} 
loading_st(); 
window.onload = loading_ed;*/


