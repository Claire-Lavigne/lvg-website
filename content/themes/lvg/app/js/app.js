require('jquery.scrollex');
import 'bootstrap';
import 'owl.carousel';
var app = {

  $body:null,

  init: function() {
    console.log('init');

// ===== footer copyright==== 
let now = new Date();
let year = now.getFullYear();
let msg = window.document.getElementById('year');
msg.innerHTML = '<strong> &copy; ' + year + ' </strong>';


// ===== Carousel categories==== 
    $('.owl-carousel').owlCarousel({
      loop:true,
      margin:5,
      nav:false,
      dots:false,
      autoplay:true,
      responsive:{
        0:{
          items:1
        },
        620:{
          items:2
        },
        915:{
          items:3
        },
        1205:{
          items:4
        },
        1495:{
          items:5
        }
      }
  });
    
// ===== Scroll to Top ==== 
$(window).scroll(function() {
  if ($(this).scrollTop() >= 50) {        
      $('#button-scroll').fadeIn(200);   
  } else {
      $('#button-scroll').fadeOut(200);   
  }
});
$('#button-scroll').click(function() {      
  $('body,html').animate({
      scrollTop : 0                       
  }, 500);
});

//===========menu-mobile===========

  app.$body = $('body');
  //menu-mobile
  $('.ui-button').on('click', app.handleToggleMenu);

  },
  handleToggleMenu: function(event) {

    console.log('app.handleToggleMenu');

    event.preventDefault();

    app.$body.toggleClass('menu-visible');
  }
  
};

$(app.init);

 AOS.init();