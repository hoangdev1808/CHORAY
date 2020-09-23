const toggleMenuMobile = () => {
    $('.toggle-menu').on('click', function () {
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
    if (mainBanner.length >= 1) {
        pagesBanner.css('padding-top', heightHeader);
    } else if (mainBanner.length < 1 && pagesBanner.length < 1) {
        breadcrumb.css('padding-top', heightHeader);
    } else {
        mainBanner.css('padding-top', heightHeader);
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

document.addEventListener('DOMContentLoaded', () => {
    toggleMenuMobile();
    moveNavitem();
    CrMainBanner();
    checkLayoutBanner();
    MultiLevelAccordiion();
    searchbox();
    Accordiion();
    Faqs();
});