const toggleMenuMobile = () => {
    $('.toggle-menu').on('click', function () {
        $(this).toggleClass('active');
        $(this).siblings('.main-nav').toggleClass('active');
        $('body').toggleClass('disabled')
        $('#overlay').toggleClass('active');
    });
    $('#overlay').on('click', function () {
        $(this).removeClass('active');
        $('body').removeClass('disabled')
        $('.main-nav').removeClass('active');
        $('.toggle-menu').removeClass('active');
    })

};
//Header when scroll
const activeHeaderWhenScroll = () => {
	window.addEventListener("scroll", function() {
		if (window.pageYOffset > 0 && $(window).width() >= 1024) {
			document.querySelector("header").classList.add("header-scoll");
            $('header').find('.logo').addClass('active');
            $('header').find('.logo-scroll').addClass('active');
		} else {
			document.querySelector("header").classList.remove("header-scoll");
            $('header').find('.logo').removeClass('active');
            $('header').find('.logo-scroll').removeClass('active')
		}
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
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.Cr-banner__slide .swiper-button-next',
            prevEl: '.Cr-banner__slide .swiper-button-prev',
        },
    });
}
//Check banner
const checkLayoutBanner = () => {
    const pagesBanner = $('#page-banner');
    const heightHeader = $('header').outerHeight();
    const mainBanner = $('#home-banner');
    if (mainBanner.length >= 1) {
        $('main').css('padding-top', heightHeader)
    }else if(pagesBanner.length >= 1){
        $('main').css('padding-top', heightHeader)
    }else {
		$('main').css('padding-top', heightHeader);
	}

}

// Trang tuyển dụng
jQuery(document).ready(function ($) {
    var alterClass = function () {
        var ww = document.body.clientWidth;
        if (ww < 1200) {
            $('.tuyendung-col').removeClass('pr-0');
        } else if (ww >= 1200) {
            $('.tuyendung-col').addClass('pr-0');
        }
    };
    $(window).resize(function () {
        alterClass();
    });
    alterClass();
});

jQuery(document).ready(function ($) {
    var alterClass = function () {
        var ww = document.body.clientWidth;
        if (ww < 1200) {
            $('.tuyendung-col-2').removeClass('pl-0');
        } else if (ww >= 1200) {
            $('.tuyendung-col-2').addClass('pl-0');
        }
    };
    $(window).resize(function () {
        alterClass();
    });
    alterClass();
});

function MultiLevelAccordiion() {
    $('.label').click(function () {
        var label = $(this);
        var parent = label.parent('.has-children');
        var list = label.siblings('#list-child');
        if (parent.hasClass('is-open')) {
            list.slideUp('slow');
            parent.removeClass('is-open');
        } else {
            list.slideDown('slow');
            parent.addClass('is-open');
        }
    });
}

function searchbox() {
    $('#searchbox').on('click', function () {
        $('#search-box').toggleClass('active');
    })
}

function Accordiion() {
    if ($(window).width() <= 1199) {
        $('.acc__title').click(function (j) {
            var dropDown = $(this).closest('.acc').find('.acc__panel');
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
}

function Faqs() {
    $('.question-title').click(function (x) {
        var dropDown = $(this).closest('.question-card').find('.question-body');
        $(this).closest('.question-card').find('.question-body').not(dropDown).slideUp();
        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
        } else {
            $(this).closest('.question-card').find('.question-title.active').removeClass('active');
            $(this).addClass('active');
        }
        dropDown.stop(false, true).slideToggle();
        x.preventDefault();
    });
}

function activeMobileMenu() {
    if ($(window).width() <= 1024) {
        $('.nav-item.dropdown').on('click', function(e) {
            e.stopPropagation();
            $(e.currentTarget).children('.dropdown-menu').slideToggle();
        });
        $('.dropdown-item.dropdown').on('click', function(j) {
            j.stopPropagation();
            $(j.currentTarget).children('.sup-menu').slideToggle();
        });
    }
}

document.addEventListener('DOMContentLoaded', () => {
    toggleMenuMobile();
    activeHeaderWhenScroll();
    moveNavitem();
    CrMainBanner();
    checkLayoutBanner();
    MultiLevelAccordiion();
    searchbox();
    Accordiion();
    Faqs();
    activeMobileMenu();
});