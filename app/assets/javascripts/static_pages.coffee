$ ->
  $('#left, #middle, #right').height($(window).height() - 210)

  $(window).resize ->
    $('#left, #middle, #right').height($(window).height() - 210)

  $('#info-link').click (e) ->
    $('.please-wait').toggle()
    e.preventDefault()

  $('#close-link').click (e) ->
    $('.please-wait').hide()

  # $('.please-wait').click (e) ->
  #   $('.please-wait').toggle()
