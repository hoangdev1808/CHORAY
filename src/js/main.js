const toggleMenuMobile = () => {
<<<<<<< HEAD
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
=======
    $(".toggle-menu").on("click", function () {
        $(this).toggleClass("active");
        $(this).siblings(".main-nav").toggleClass("active");
        $("body").toggleClass("disabled");
    });
};
function moveNavitem() {
    if ($(window).width() <= 1024) {
        $(".icon > #desktop").appendTo("nav .nav-mobile");
    } else {
        $(".icon > #desktop").appendTo(".main-nav>.nav .icon");
>>>>>>> 467fb7d3ffec64e04fbf7526cce54a0781fc48dd
    }
}

//Slide banner
function CrMainBanner() {
<<<<<<< HEAD
    var swiperhomebanner = new Swiper('.Cr-banner__slide', {
=======
    var swiperhomebanner = new Swiper(".Cr-banner__slide", {
>>>>>>> 467fb7d3ffec64e04fbf7526cce54a0781fc48dd
        loop: true,
        speed: 1000,
        grabCursor: true,
        watchSlidesProgress: true,
        mousewheelControl: true,
        keyboardControl: true,
<<<<<<< HEAD
        effect: 'fade',
=======
        effect: "fade",
>>>>>>> 467fb7d3ffec64e04fbf7526cce54a0781fc48dd
        autoplay: {
            delay: 3500,
            disableOnInteraction: false,
        },
        navigation: {
<<<<<<< HEAD
            nextEl: '.Cr-banner__slide .swiper-button-next',
            prevEl: '.Cr-banner__slide .swiper-button-prev',
=======
            nextEl: ".Cr-banner__slide .swiper-button-next",
            prevEl: ".Cr-banner__slide .swiper-button-prev",
>>>>>>> 467fb7d3ffec64e04fbf7526cce54a0781fc48dd
        },
    });
}
//Check banner
const checkLayoutBanner = () => {
<<<<<<< HEAD
    const pagesBanner = $('#page-banner');
    const breadcrumb = $('.global-breadcrumb');
    const heightHeader = $('header').outerHeight();
    const mainBanner = $('#home-banner');

    if (mainBanner.length < 1 && pagesBanner.length < 1) {
        $('main').css('padding-top', heightHeader);
    }
};
document.addEventListener('DOMContentLoaded', () => {
=======
    const pagesBanner = $("#page-banner");
    const breadcrumb = $(".global-breadcrumb");
    const heightHeader = $("header").outerHeight();
    const mainBanner = $("#home-banner");

    if (mainBanner.length < 1 && $(window).width() >= 1024) {
        pagesBanner.css("padding-top", heightHeader + 13);
    } else {
        mainBanner.css("padding-top", heightHeader + 13);
    }
    if (mainBanner.length < 1 && pagesBanner.length < 1) {
        $("main").css("padding-top", heightHeader);
    }
};
document.addEventListener("DOMContentLoaded", () => {
>>>>>>> 467fb7d3ffec64e04fbf7526cce54a0781fc48dd
    toggleMenuMobile();
    moveNavitem();
    CrMainBanner();
    checkLayoutBanner();
<<<<<<< HEAD
});
=======
});
>>>>>>> 467fb7d3ffec64e04fbf7526cce54a0781fc48dd
