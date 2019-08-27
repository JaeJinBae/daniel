$(document).ready( function() {

	// * ------------------------------------------------------------
	// * 웹접근성을 위한 바로가기 탭키의 스크롤 부드럽게 이동하는 에니메이션 효과(스피드 0.5초)
	$("#skipnavigation a").click(function(event){            
		event.preventDefault();
		$('html, body').animate({scrollTop:$(this.hash).offset().top}, 500);
	});
	// * ------------------------------------------------------------


	
	// * ------------------------------------------------------------
	// * 스크롤 시 에니메이션  (wow.js + animate.css)
	// * https://mynameismatthieu.com/WOW/
	// * https://codepen.io/TimLamber/pen/dLxbF

	// Helper function for add element box list in WOW
	WOW.prototype.addBox = function(element) {
		this.boxes.push(element);
	};

	// Init WOW.js and get instance
	var wow = new WOW();
	wow.init();

	// Attach scrollSpy to .wow elements for detect view exit events,
	// then reset elements and add again for animation
	$('.wow').on('scrollSpy:exit', function() {
		$(this).css({
			'visibility': 'hidden',
			'animation-name': 'none'
		}).removeClass('animated');
		wow.addBox(this);
	}).scrollSpy();
	// * ------------------------------------------------------------



	// * ------------------------------------------------------------
	// * GNB 콘텐츠 페이지네이션( href속성값과 id값을 매핑시켜 부모 엘리먼트에 active 클래스를 부여합니다.)
	var lastId,
	topMenu = $(".gnb"),
	topMenuHeight = topMenu.outerHeight()+0,
	// All list items
	menuItems = topMenu.find("a"),
	// Anchors corresponding to menu items
	scrollItems = menuItems.map(function(){
	  var item = $($(this).attr("href"));
	  if (item.length) { return item; }
	});

	// * GNB href 속성 값과 id값이 일치하는 엘리먼트로 부드럽게 이동
	menuItems.click(function(e){
	  var href = $(this).attr("href"),
		  offsetTop = href === "#" ? 0 : $(href).offset().top-topMenuHeight+1;
	  $('html, body').stop().animate({ 
		  scrollTop: offsetTop
	  }, 800);
	  e.preventDefault();
	});

	// Bind to scroll
	$(window).scroll(function(){
	   // Get container scroll position
	   var fromTop = $(this).scrollTop()+topMenuHeight;
	   
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
	$(document).ready(function() {
		
	$("#goto_home").click(function() {
		$("html, body").animate({ scrollTop: 0 }, 500);
		return false;
		});
	});
	// * ------------------------------------------------------------

	// * ------------------------------------------------------------
	// * 메인페이지 Header 스크롤 고정 스크립트
	 $( window ).scroll(function() {
		 if($(window).scrollTop() > 1){
			 $( "#header, #dandi-banner" ).addClass("fixed");
		 } else {
			 $( "#header, #dandi-banner" ).removeClass("fixed");
		 }
		 
	 });
	// * ------------------------------------------------------------


	// * 슬라이더 셋팅 http://kenwheeler.github.io/slick/
	$('#home').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		speed: 500,
		autoplay: true,
		autoplaySpeed: 5000,
		dots: true,
		arrows: true,
		fade: false,
		cssEase: 'cubic-bezier(1, 0, 0.7, 1)',
		pauseOnFocus:false,
		pauseOnHover:false,
		pauseOnDotsHover:false,
		draggable:false
	});



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
