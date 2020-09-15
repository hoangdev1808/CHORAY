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

	if ((mainBanner.length < 1) && ($(window).width() >= 1024)) {
		pagesBanner.css('padding-top', heightHeader + 13);
	} else {
		mainBanner.css('padding-top', heightHeader + 13);
	}
};
document.addEventListener('DOMContentLoaded', () => {
	toggleMenuMobile();
	moveNavitem();
	CrMainBanner();
	checkLayoutBanner()
});