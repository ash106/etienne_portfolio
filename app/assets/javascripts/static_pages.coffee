$ ->
  resizeColumns = ->
    if $(window).width() >= 768
      $('#left, #middle, #right').height($(window).height() - 210) # 100 + 50 + 10 + 50
      $('#about').height($(window).height() - 150) # 100 + 50
    else
      $('#left, #middle, #right').height($(window).height() - 114) # 50 + 30 + 4 + 30
      $('#about').height($(window).height() - 80) # 50 + 30
    return

  resizeColumns()

  $(window).resize ->
    resizeColumns()
