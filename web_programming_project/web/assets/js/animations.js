/* ******************** HEADER ANIMATION ****************** */
jQuery(window).scroll(function()
{
    // Parallax Effects
    var vScroll = jQuery(this).scrollTop();
    jQuery('#headerLogo').css(
    {
        "transform" : "translate(0px, " +vScroll/2+"px)"
    });

    //
    var vScroll = jQuery(this).scrollTop();
    jQuery('#fore-keyboard').css(
    {
            "transform" : "translate(" +vScroll/2+ "px, -" +vScroll/12+ "px)"
    });

    var vScroll = jQuery(this).scrollTop();
    jQuery('#fore-mouse').css(
    {
            "transform" : "translate(" +vScroll/4+ "px, -" +vScroll/12+ "px)"
    });

    var vScroll = jQuery(this).scrollTop();
    jQuery('#fore-notebook').css(
    {
            "transform" : "translate(" +vScroll/10+ "px, -" +vScroll/12+ "px)"
    });

    var vScroll = jQuery(this).scrollTop();
    jQuery('#fore-monitor').css(
    {
            "transform" : "translate(0px, -" +vScroll/12+ "px)"
    });

    var vScroll = jQuery(this).scrollTop();
    jQuery('#fore-stack').css(
    {
            "transform" : "translate(" +vScroll/-10+ "px, -" +vScroll/12+ "px)"
    });

    var vScroll = jQuery(this).scrollTop();
    jQuery('#fore-hdd').css(
    {
            "transform" : "translate(" +vScroll/-4+ "px, -" +vScroll/12+ "px)"
    });

    var vScroll = jQuery(this).scrollTop();
    jQuery('#fore-scanner').css(
    {
            "transform" : "translate(" +vScroll/-2.7+ "px, -" +vScroll/12+ "px)"
    });
});

/* */            
$('.form').find('input, textarea').on('keyup blur focus', function (e) {
  
  var $this = $(this),
      label = $this.prev('label');

	  if (e.type === 'keyup') {
			if ($this.val() === '') {
          label.removeClass('active highlight');
        } else {
          label.addClass('active highlight');
        }
    } else if (e.type === 'blur') {
    	if( $this.val() === '' ) {
    		label.removeClass('active highlight'); 
			} else {
		    label.removeClass('highlight');   
			}   
    } else if (e.type === 'focus') {
      
      if( $this.val() === '' ) {
    		label.removeClass('highlight'); 
			} 
      else if( $this.val() !== '' ) {
		    label.addClass('highlight');
			}
    }

});

$('.tab a').on('click', function (e) {
  
  e.preventDefault();
  
  $(this).parent().addClass('active');
  $(this).parent().siblings().removeClass('active');
  
  target = $(this).attr('href');

  $('.tab-content > div').not(target).hide();
  
  $(target).fadeIn(600);
  
});

/* Fade out Text for H3 */
$( "h3.fadeout" ).delay( 750 ).fadeOut( 500 );