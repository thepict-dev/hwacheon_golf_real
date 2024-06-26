
// gnb 메뉴
function gnbMenu(type) {
	const $body = $("body");
	if(type === "open") $body.addClass("gnb-open");
	else $body.removeClass("gnb-open");
}

// scroll animation
$(function () {
    AOS.init();
});
$(window).resize(function() {
    AOS.init();
})
AOS.init({
    // Global settings:
    disable: false, // accepts following values: 'phone', 'tablet', 'mobile', boolean, expression or function
    startEvent: 'DOMContentLoaded', // name of the event dispatched on the document, that AOS should initialize on
    initClassName: 'aos-init', // class applied after initialization
    animatedClassName: 'aos-animate', // class applied on animation
    useClassNames: false, // if true, will add content of `data-aos` as classes on scroll
    disableMutationObserver: false, // disables automatic mutations' detections (advanced)
    debounceDelay: 50, // the delay on debounce used while resizing window (advanced)
    throttleDelay: 99, // the delay on throttle used while scrolling the page (advanced)
});


// board toggle
function boardView(target) {
	$(".js-board-cont").stop().slideUp();
	$(target).siblings(".js-board-cont").stop().slideToggle();
}