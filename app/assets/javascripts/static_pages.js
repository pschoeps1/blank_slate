// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function(){
  $('.js-menu-trigger,.js-menu-screen').on('click touchstart',function (e) {
    $('.js-menu,.js-menu-screen').toggleClass('is-visible');
    e.preventDefault();
  });
  
 // $('.overlay').hover(function () {
  //    $(this).hover(function () {
  //        $('img').toggleClass('is-visible-img');
  //    });
//  });
});

$(document).ready(function() {
  var element = document.getElementById("js-fadeInElement");
  $(element).addClass('js-fade-element-hide');

$(window).scroll(function() {
    if( $("#js-fadeInElement").length > 0 ) {
      var elementTopToPageTop = $(element).offset().top;
      var windowTopToPageTop = $(window).scrollTop();
      var windowInnerHeight = window.innerHeight;
      var elementTopToWindowTop = elementTopToPageTop - windowTopToPageTop;
      var elementTopToWindowBottom = windowInnerHeight - elementTopToWindowTop;
      var distanceFromBottomToAppear = 300;

      if(elementTopToWindowBottom > distanceFromBottomToAppear) {
        $(element).addClass('js-fade-element-show');
      }
      else if(elementTopToWindowBottom < 0) {
        $(element).removeClass('js-fade-element-show');
        $(element).addClass('js-fade-element-hide');
      }
    }
  });

  
  
  $(document).ready(function () {
  $('.accordion-tabs').each(function(index) {
    $(this).children('li').first().children('a').addClass('is-active').next().addClass('is-open').show();
  });

  $('.accordion-tabs').on('click', 'li > a', function(event) {
    if (!$(this).hasClass('is-active')) {
      event.preventDefault();
      var accordionTabs = $(this).closest('.accordion-tabs');
      accordionTabs.find('.is-open').removeClass('is-open').hide();

      $(this).next().toggleClass('is-open').toggle();
      accordionTabs.find('.is-active').removeClass('is-active');
      $(this).addClass('is-active');
    } else {
      event.preventDefault();
    }
  });
});

});




        
