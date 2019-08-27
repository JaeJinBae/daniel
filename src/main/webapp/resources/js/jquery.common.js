$(document).ready(function(){


	// * ------------------------------------------------------------
	// * Bread Crumb 슬라이드 다운/업 에니메이션
	$('li.gnb button, li.lnb button').click(function(){
		$(this).toggleClass('active');
		$(this).parents().siblings('li').children('ul').slideUp();
		$(this).next('ul').slideToggle();
	});
	// * ------------------------------------------------------------


	// * ------------------------------------------------------------
	// * GNB의 service, web에 마우스 올릴 경우 dim bg보이게합니다.
	$('#gnb li.gnb').mouseover(function(){
		$('.gnb-bg').show();
	});
	$('#gnb li.gnb').mouseleave(function(){
		$('.gnb-bg').hide();
	});

	$(window).scroll(function(){
	  const x = -this.scrollX    
	  $(".fixed-on").css({left: x}) 
	})
	// * ------------------------------------------------------------

	
	// * ------------------------------------------------------------
	// * 퀵메뉴 상단으로 이동하는 버튼 스크립트
	$("a.scroll-top").click(function() {
		$("html, body").animate({ scrollTop: 0 }, 500);
		return false;
	});
	// * ------------------------------------------------------------

	$('#quick-inquire > button, #event').on('click', function() {
		$('#quick-inquire').toggleClass('active');
		$('#quick-inquire > button').toggleClass('active');
	});

	$('.btn-private').on('click', function() {
		$('.pop-private').fadeIn();
	});

	$('.pop-close').on('click', function() {
		$('.pop-private').fadeOut();
	});
});