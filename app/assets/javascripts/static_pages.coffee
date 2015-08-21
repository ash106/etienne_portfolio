$ ->
  $('#left, #middle, #right').height($(window).height() - 160)

  $(window).resize ->
    $('#left, #middle, #right').height($(window).height() - 160)
