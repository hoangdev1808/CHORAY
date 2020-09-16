const toggleMenuMobile = () => {
	$(".toggle-menu").on("click", function() {
		$(this).toggleClass("active");
		$(this).siblings(".main-nav").toggleClass("active");
		$("body").toggleClass("disabled");
	});
}
function moveNavitem() {
	if ($(window).width() <= 1024) {
		$('.icon > #desktop').appendTo('nav .nav-mobile');
	} else {
		$('.icon > #desktop').appendTo('.main-nav>.nav .icon');
	}
}

//Slide banner
function CrMainBanner() {
	var swiperhomebanner = new Swiper('.Cr-banner__slide', {
		loop: true,
		speed: 1000,
		grabCursor: true,
		watchSlidesProgress: true,
		mousewheelControl: true,
		keyboardControl: true,
		effect: 'fade',
		autoplay: {
			delay: 3500,
			disableOnInteraction: false
		},
		navigation: {
			nextEl: ".Cr-banner__slide .swiper-button-next",
			prevEl: ".Cr-banner__slide .swiper-button-prev"
		}

	});
}
//Check banner
const checkLayoutBanner = () => {
	const pagesBanner = $("#page-banner");
	const breadcrumb = $('.global-breadcrumb');
	const heightHeader = $("header").outerHeight();
	const mainBanner = $("#home-banner");

	if (mainBanner.length < 1) {
		pagesBanner.css('padding-top', heightHeader);
	}
	else if(mainBanner.length < 1 && pagesBanner.length < 1){
		breadcrumb.css('padding-top', heightHeader);
	}else {
		mainBanner.css('padding-top', heightHeader);
	}

}

// Menu Left
function MenuLeft(){
	$('.acc').find('.acc__panel:first').addClass('show');
	$('.acc__title').click(function(j) {
		var dropDown = $(this).closest('.acc__card').find('.acc__panel');
		$(this).closest('.acc').find('.acc__panel').not(dropDown).slideUp();
		if ($(this).hasClass('active')) {
		$(this).removeClass('active');
		} else {
		$(this).closest('.acc').find('.acc__title.active').removeClass('active');
		$(this).addClass('active');
		}
		dropDown.stop(false, true).slideToggle();
		j.preventDefault();
	});
}

document.addEventListener('DOMContentLoaded', () => {
	toggleMenuMobile();
	moveNavitem();
	CrMainBanner();
	checkLayoutBanner();
	MenuLeft();
});