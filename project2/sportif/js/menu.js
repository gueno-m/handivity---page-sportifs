$(document).ready(function () {

    $('.icon').click(function () {
        $('.icon').toggleClass('active');
        $('.overlay').toggleClass('openandclose');
        $('.logo').toggleClass('menulogo');
    });

    $(window).scroll(function () {

        if ($(this).scrollTop() > 0.9 * window.innerHeight && $(this).scrollTop() <= 1.5 * window.innerHeight && $(this).width() > 650) {
            $(".navbar").addClass("navbarbas");


        } else {
            $(".navbar").removeClass("navbarbas");


        }
    })

});
