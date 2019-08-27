// 서브페이지에서 0.5초간의 로딩 페이지 호출 스크립트
$(window).load(function() {
	setTimeout(function(){ $("#loader-wrapper").fadeOut(); }, 500); // 기본 0.5초로딩 페이지가 보입니다. (문서가 다운로드 될때까지 로딩됩니다.)
});



$(document).ready( function() {
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
		 if($(window).scrollTop() > 0){
			 $( "#header" ).addClass("fixed-on");
		 } else {
			 $( "#header" ).removeClass("fixed-on");
		 }
		 
	 });
	// * ------------------------------------------------------------


	// * ------------------------------------------------------------
	// * 이벤트 에니메이션 슬라이드(Animate.css + Slick.js)
	// * 슬라이더 셋팅 http://kenwheeler.github.io/slick/

	$('#event ul').slick({
		autoplay: true,
		autoplaySpeed: 2000,
		dots: false,
		dotsClass: 'slick-dots02',
		arrows: true,
		prevArrow: '<button class="slick-prev04" aria-label="Previous" type="button"></button>',
		nextArrow: '<button class="slick-next04" aria-label="Next" type="button"></button>',
		fade: false,
		pauseOnFocus:false,
		pauseOnHover:false,
		pauseOnDotsHover:false,
		draggable:false
	});

	// * ------------------------------------------------------------



	// * ------------------------------------------------------------
	// * 
	$('.surgery-option .item button').click(function(){
		$(this).toggleClass('active');
		$(this).parent().siblings().children('ul').slideUp();
		$(this).parent().siblings().children('button').removeClass('active');
		$(this).next('ul').slideToggle('fast');
	});
	// * ------------------------------------------------------------

	// * 
	$(".surgery-tab button").click(function () {
		$(this).addClass("active").siblings('button').removeClass("active");
		$(".surgery-inventory").css('display', 'none');
		var activeTab = $(this).attr("rel");
		$("#" + activeTab).css('display', 'block');
	});


	// * ------------------------------------------------------------
	// * 
	$('.order-btn button').click(function(){
		//$('#order-complete').fadeIn();
	});

	$('button.order-btn-complete').click(function(){
		$('#order-complete').fadeOut();
	});

	$('#pop-order-list > button > em').click(function(){
		$(this).parent('button').hide();
	});

	$('button.btn-reset').click(function(){
		$('#pop-order-list button').hide();
	});

	$('#pop-agreement button').click(function(){
		$('#pop-agreement').fadeOut();
		$('.pop-private').fadeOut();
		$('.pop-marketing').fadeOut();
	});

	$('button.agree01').click(function(){
		$('#pop-agreement').fadeIn();
		$('.pop-private').fadeIn();
	});

	$('button.agree02').click(function(){
		$('#pop-agreement').fadeIn();
		$('.pop-marketing').fadeIn();
	});
	// * ------------------------------------------------------------





















});
