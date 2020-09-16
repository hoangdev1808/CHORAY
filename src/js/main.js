const toggleMenuMobile = () => {
    $('.toggle-menu').on('click', function() {
        $(this).toggleClass('active');
        $(this).siblings('.main-nav').toggleClass('active');
        $('body').toggleClass('disabled');
    });
};

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
    const breadcrumb = $('.global-breadcrumb');
    const heightHeader = $('header').outerHeight();
    const mainBanner = $('#home-banner');

    if (mainBanner.length < 1 && $(window).width() >= 1024) {
        pagesBanner.css('padding-top', heightHeader + 13);
    } else {
        mainBanner.css('padding-top', heightHeader + 13);
    }
    if (mainBanner.length < 1 && pagesBanner.length < 1) {
        $('main').css('padding-top', heightHeader);
    }
};
document.addEventListener('DOMContentLoaded', () => {
    toggleMenuMobile();
    moveNavitem();
    CrMainBanner();
    checkLayoutBanner();
});
// Trang tuyển dụng
jQuery(document).ready(function($) {
    var alterClass = function() {
        var ww = document.body.clientWidth;
        if (ww < 1200) {
            $('.tuyendung-col').removeClass('pr-0');
        } else if (ww >= 1200) {
            $('.tuyendung-col').addClass('pr-0');
        }
    };
    $(window).resize(function() {
        alterClass();
    });
    alterClass();
});

jQuery(document).ready(function($) {
    var alterClass = function() {
        var ww = document.body.clientWidth;
        if (ww < 1200) {
            $('.tuyendung-col-2').removeClass('pl-0');
        } else if (ww >= 1200) {
            $('.tuyendung-col-2').addClass('pl-0');
        }
    };
    $(window).resize(function() {
        alterClass();
    });
    alterClass();
});