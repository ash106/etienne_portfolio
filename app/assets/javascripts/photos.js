var loadFile = function(event) {
  var output = document.getElementById('image-preview');
  output.src = URL.createObjectURL(event.target.files[0]);
};

$(document).ready(function() {
  $(".fancybox").fancybox({
    padding: 0
  });

  $('.fancybox-media').fancybox({
    padding: 0,
    helpers: {
      media: {}
    }
  });
});

$(function() {
  // Opacity of overlay set to 0%
  $(".overlay").css("opacity","0");

  // On image load, set width and height of overlay for each image
  $('.home img').on('load',function(){
    var w = $(this).css("width");
    var h = $(this).css("height");
    var r = $(this).siblings('.overlay');
    r.css("height",h).css("width",w);
  });
   
  // On mouse over
  $(".overlay").hover(function () {
      // Set width and height of overlay being hovered (in case screen size was changed since the first time dimensions were set)
      var i = $(this).siblings('img');
      var w = i.css("width");
      var h = i.css("height");
      $(this).css("height",h).css("width",w);
      // Set opacity to 60%
      $(this).stop().animate({opacity: 0.6}, "fast");
    },
    // On mouse out, set opacity back to 0%
    function () {
      $(this).stop().animate({opacity: 0}, "fast");
  });
});
