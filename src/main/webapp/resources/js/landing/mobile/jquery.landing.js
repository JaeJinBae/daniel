$(document).ready( function() {
	
	$('img[usemap]').rwdImageMaps();


	// * ------------------------------------------------------------
	// * 슬라이더 셋팅 http://kenwheeler.github.io/slick/
	$('#home').slick({
	   slidesToShow:1,
	   autoplay: true,
	   autoplaySpeed: 3000,
	   dots: true,
	   arrows:false,
	   fade:true,
	   centerMode: true,
	   prevArrow: '<button class="slick-prev" aria-label="Previous" type="button"><img src="/assets/img/landing/web/theme/btn_prev.png" alt=""></button>',
		nextArrow: '<button class="slick-next" aria-label="Next" type="button"><img src="/assets/img/landing/web/theme/btn_next.png" alt=""></button>',
	   pauseOnFocus:false,
	   pauseOnHover:false,
	   pauseOnDotsHover:false,
	   draggable:false
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
	// * GNB 콘텐츠 페이지네이션( href속성값과 id값을 매핑시켜 부모 엘리먼트에 active 클래스를 부여합니다.)
	var lastId,
	topMenu = $("#gnb ul"),
	topMenuHeight = topMenu.outerHeight(),
	// All list items
	menuItems = topMenu.find("a"),
	// Anchors corresponding to menu items
	scrollItems = menuItems.map(function(){
	  var item = $($(this).attr("href"));
	  if (item.length) { return item; }
	});

	// * GNB href 속성 값과 id값이 일치하는 엘리먼트로 부드럽게 이동
	//menuItems.click(function(e){
	//  var href = $(this).attr("href"),
	//	  offsetTop = href === "#" ? 0 : $(href).offset().top-topMenuHeight+1;
	//  $('html, body').stop().animate({ 
	//	  scrollTop: offsetTop
	//  }, 800);
	//  e.preventDefault();
	//});

	// Bind to scroll
	$(window).scroll(function(){
	   // Get container scroll position
	   var fromTop = $(this).scrollTop()+topMenuHeight - 30;
	   
	   // Get id of current scroll item
	   var cur = scrollItems.map(function(){
		 if ($(this).offset().top < fromTop)
		   return this;
	   });
	   // Get the id of the current element
	   cur = cur[cur.length-1];
	   var id = cur && cur.length ? cur[0].id : "";
	   
	   if (lastId !== id) {
		   lastId = id;
		   // Set/remove active class
		   menuItems
			 .parent().removeClass("active")
			 .end().filter("[href='#"+id+"']").parent().addClass("active");
	   }                   
	});
	// * ------------------------------------------------------------



	// * ------------------------------------------------------------
	// * 스크롤 시 최상단으로 이동하는 버튼

		$("#goto_home").click(function() {
			$("html, body").animate({ scrollTop: 0 }, 500);
			return false;
		});

	// * ------------------------------------------------------------




	// * ------------------------------------------------------------
	// * 웹접근성을 위한 바로가기 탭키의 스크롤 부드럽게 이동하는 에니메이션 효과(스피드 0.5초)
	$('a[href^="#"]').on('click', function(event) {
		var target = $(this.getAttribute('href'));
		if( target.length ) {
			event.preventDefault();
			$('html, body').stop().animate({
				scrollTop: target.offset().top - 30
			}, 500);
		}
	});
	// * ------------------------------------------------------------



	// * ------------------------------------------------------------
	// * GNB
	$('#hamburger').click(function(){
		$(this).toggleClass('active');
		$('.gnb-dim').fadeToggle();
		$('#gnb').slideToggle('fast');
	});

	$('#gnb a').click(function(){
		$('#gnb').slideUp();
		$('.gnb-dim').fadeOut('fast');
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

function fn_gotoTop(){
	$("html, body").animate({ scrollTop: 0 }, 500);
}