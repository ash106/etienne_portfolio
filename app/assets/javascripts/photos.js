var loadFile = function(event) {
  var output = document.getElementById('image-preview');
  output.src = URL.createObjectURL(event.target.files[0]);
};

$(document).ready(function() {
  $(".fancybox").fancybox({
    padding: 0
  });
});
