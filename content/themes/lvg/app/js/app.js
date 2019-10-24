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






//===========SIGNATURE===========

 (function() {
    window.requestAnimFrame = (function(callback) {
        return window.requestAnimationFrame ||
        window.webkitRequestAnimationFrame ||
        window.mozRequestAnimationFrame ||
        window.oRequestAnimationFrame ||
        window.msRequestAnimaitonFrame ||
        function(callback) {
            window.setTimeout(callback, 1000 / 60);
        };
    })();

    var canvas = document.getElementById("sig-canvas");
    var ctx = canvas.getContext("2d");
    ctx.strokeStyle = "#222222";
    ctx.lineWidth = 4;

    var drawing = false;
    var mousePos = {
        x: 0,
        y: 0
    };
    var lastPos = mousePos;

    canvas.addEventListener("mousedown", function(e) {
        drawing = true;
        lastPos = getMousePos(canvas, e);
    }, false);

    canvas.addEventListener("mouseup", function(e) {
        drawing = false;
    }, false);

    canvas.addEventListener("mousemove", function(e) {
        mousePos = getMousePos(canvas, e);
    }, false);

    // Add touch event support for mobile
    canvas.addEventListener("touchstart", function(e) {

    }, false);

    canvas.addEventListener("touchmove", function(e) {
        var touch = e.touches[0];
        var me = new MouseEvent("mousemove", {
        clientX: touch.clientX,
        clientY: touch.clientY
        });
        canvas.dispatchEvent(me);
    }, false);

    canvas.addEventListener("touchstart", function(e) {
        mousePos = getTouchPos(canvas, e);
        var touch = e.touches[0];
        var me = new MouseEvent("mousedown", {
        clientX: touch.clientX,
        clientY: touch.clientY
        });
        canvas.dispatchEvent(me);
    }, false);

    canvas.addEventListener("touchend", function(e) {
        var me = new MouseEvent("mouseup", {});
        canvas.dispatchEvent(me);
    }, false);

    function getMousePos(canvasDom, mouseEvent) {
        var rect = canvasDom.getBoundingClientRect();
        return {
        x: mouseEvent.clientX - rect.left,
        y: mouseEvent.clientY - rect.top
        }
    }

    function getTouchPos(canvasDom, touchEvent) {
        var rect = canvasDom.getBoundingClientRect();
        return {
        x: touchEvent.touches[0].clientX - rect.left,
        y: touchEvent.touches[0].clientY - rect.top
        }
    }

    function renderCanvas() {
        if (drawing) {
        ctx.moveTo(lastPos.x, lastPos.y);
        ctx.lineTo(mousePos.x, mousePos.y);
        ctx.stroke();
        lastPos = mousePos;
        }
    }

    // Prevent scrolling when touching the canvas
    document.body.addEventListener("touchstart", function(e) {
        if (e.target == canvas) {
        e.preventDefault();
        }
    }, false);
    document.body.addEventListener("touchend", function(e) {
        if (e.target == canvas) {
        e.preventDefault();
        }
    }, false);
    document.body.addEventListener("touchmove", function(e) {
        if (e.target == canvas) {
        e.preventDefault();
        }
    }, false);

    (function drawLoop() {
        requestAnimFrame(drawLoop);
        renderCanvas();
    })();

    function clearCanvas() {
        canvas.width = canvas.width;
    }

    // Set up the UI
    var sigImage = document.getElementById("sig-image");
    var clearBtn = document.getElementById("sig-clearBtn");
    var submitBtn = document.getElementById("sig-submitBtn");
    clearBtn.addEventListener("click", function(e) {
        clearCanvas();
        sigImage.setAttribute("src", "");
    }, false);
    submitBtn.addEventListener("click", function(e) {
        var dataUrl = canvas.toDataURL();
        sigImage.setAttribute("src", dataUrl);
    }, false);

  })();


//===========END SIGNATURE===========