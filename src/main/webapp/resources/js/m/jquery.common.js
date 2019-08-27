$(document).ready( function() {

	$('img[usemap]').rwdImageMaps();

	// * ------------------------------------------------------------
	// * GNB
	$('#hamburger').click(function(){
		$(this).toggleClass('active');
		$('.gnb-dim').fadeToggle();
		$('#gnb').fadeToggle();
	});

	$('li.gnb a').click(function(){
		$('#gnb').slideUp();
		$('.gnb-dim').fadeOut();
		$('#hamburger').removeClass('active');
	});

	// * ------------------------------------------------------------



	// * ------------------------------------------------------------
	// * SCROLL TOP
	var scrollTop = $(".scroll-top");

	$(window).scroll(function() {
	// declare variable
	var topPos = $(this).scrollTop();

	// if user scrolls down - show scroll to top button
	if (topPos > 100) {
	  $(scrollTop).css("opacity", "1");

	} else {
	  $(scrollTop).css("opacity", "0");
	}

	}); // scroll END

	$("a.top").click(function() {
		$("html, body").animate({ scrollTop: 0 }, 500);
		return false;
	});
	// * ------------------------------------------------------------


	// * ------------------------------------------------------------
	// * GNB 드롭다운 SNB BG
	$('li.gnb > button').click(function(){
		$(this).next('ul').slideToggle();
		$(this).parents().siblings('li').children('ul').slideUp();
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