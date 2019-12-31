// 메인(index.html)에서만 2초간의 로딩 페이지 호출 스크립트
$(window).load(function() {
	setTimeout(function(){ $("#loader-wrapper").fadeOut(); }, 0); // 기본 2초로딩 페이지가 보입니다. (문서가 다운로드 될때까지 로딩됩니다.)
});


function flip() {
    $('.card').toggleClass('flipped');
}

$(document).ready( function() {
	// * ------------------------------------------------------------
	// * 메인페이지 레이어 에니메이션 슬라이드(Animate.css + Slick.js)
	// * 슬라이더 셋팅 http://kenwheeler.github.io/slick/
	
	$('.visual-slide').slick({
	   autoplay: true,
	   autoplaySpeed: 4500,
	   dots: true,
	   arrows: true,
	   fade: false
	});
	
	$('.slider-banner').slick({
		autoplay: true,
		autoplaySpeed: 4500,
		dots: false,
		arrows: true,
		prevArrow: '<button class="slick-prev02" aria-label="Previous" type="button"></button>',
		nextArrow: '<button class="slick-next02" aria-label="Next" type="button"></button>',
		fade: false,
		pauseOnFocus:false,
		pauseOnHover:false,
		pauseOnDotsHover:false,
		draggable:false,
		slidesToShow: 3,
		slidesToScroll: 3
	});

	$('#pop-slider ul').slick({
		autoplay: true,
		autoplaySpeed: 7000,
		dots: false,
		arrows: true,
		prevArrow: '<button class="slick-prev03" aria-label="Previous" type="button"></button>',
		nextArrow: '<button class="slick-next03" aria-label="Next" type="button"></button>',
		fade: false,
		pauseOnFocus:false,
		pauseOnHover:false,
		pauseOnDotsHover:false,
		draggable:false
	});
	// * ------------------------------------------------------------


	// * ------------------------------------------------------------
	// * 

	$('.pop-slider-close-top, .pop-slider-close-bottom').click(function(){
		$('#pop-slider').fadeOut();
	});

	// * ------------------------------------------------------------



	// * ------------------------------------------------------------
	// * 웹접근성을 위한 바로가기 탭키의 스크롤 부드럽게 이동하는 에니메이션 효과(스피드 0.5초)
	$("#skipnavigation a").click(function(event){            
		event.preventDefault();
		$('html, body').animate({scrollTop:$(this.hash).offset().top}, 500);
	});
	// * ------------------------------------------------------------


	// * ------------------------------------------------------------
	// * 메인페이지 Header 스크롤 고정 스크립트
	 $( window ).scroll(function() {
		 /*var defaultPosition = $('#video-visual').offset().top + $('#video-visual').outerHeight();
		 if($(window).scrollTop() > defaultPosition){
			 $( "#header" ).addClass("fixed-on");
		 } else {
			 $( "#header" ).removeClass("fixed-on");
		 }*/
		 //==================위: 변경 전 영상 들어있을 때 js, 아래 : 영상 숨김 후 js
		 if($(window).scrollTop() > 0){
			 $( "#header" ).addClass("fixed-on");
		 } else {
			 $( "#header" ).removeClass("fixed-on");
		 }
		 
	 });
	// * ------------------------------------------------------------


});
