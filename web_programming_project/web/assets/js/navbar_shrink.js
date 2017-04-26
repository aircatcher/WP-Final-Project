//Shrinking navbar animation
$(window).scroll(function() {
  if ($(document).scrollTop() > 590) {
      $('.navbarScroll').hide(250);
      $('nav').addClass('shrink');
  } else {
      $('.navbarScroll').show(250);
      $('nav').removeClass('shrink');
  }
});