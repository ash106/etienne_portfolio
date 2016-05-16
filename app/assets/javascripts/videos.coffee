$ ->
  if $('#sortable_videos').length > 0
    table_width = $('#sortable_videos').width()
    cells = $('#sortable_videos').find('tr')[0].cells.length
    desired_width = table_width / cells + 'px'
    $('#sortable_videos td').css('width', desired_width)

    $('#sortable_videos').sortable(
      axis: 'y'
      items: '.item'
      cursor: 'move'

      sort: (e, ui) ->
        ui.item.addClass('active-item-shadow')
      stop: (e, ui) ->
        ui.item.removeClass('active-item-shadow')
        # highlight the row on drop to indicate an update
        ui.item.children('td').effect('highlight', {}, 1000)
      update: (e, ui) ->
        video_id = ui.item.data('video-id')
        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
        $.ajax(
          type: 'POST'
          url: '/admin/videos/update_row_order'
          dataType: 'json'
          data: { video: {video_id: video_id, row_order_position: position } }
        )
    )

$ ->
  if $('#sortable_photos').length > 0
    table_width = $('#sortable_photos').width()
    cells = $('#sortable_photos').find('tr')[0].cells.length
    desired_width = table_width / cells + 'px'
    $('#sortable_photos td').css('width', desired_width)

    $('#sortable_photos').sortable(
      axis: 'y'
      items: '.item'
      cursor: 'move'

      sort: (e, ui) ->
        ui.item.addClass('active-item-shadow')
      stop: (e, ui) ->
        ui.item.removeClass('active-item-shadow')
        # highlight the row on drop to indicate an update
        ui.item.children('td').effect('highlight', {}, 1000)
      update: (e, ui) ->
        photo_id = ui.item.data('photo-id')
        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
        $.ajax(
          type: 'POST'
          url: '/admin/photos/update_photos_order'
          dataType: 'json'
          data: { photo: {photo_id: photo_id, photos_order_position: position } }
        )
    )

$ ->
  if $('#sortable_skiing').length > 0
    table_width = $('#sortable_skiing').width()
    cells = $('#sortable_skiing').find('tr')[0].cells.length
    desired_width = table_width / cells + 'px'
    $('#sortable_skiing td').css('width', desired_width)

    $('#sortable_skiing').sortable(
      axis: 'y'
      items: '.item'
      cursor: 'move'

      sort: (e, ui) ->
        ui.item.addClass('active-item-shadow')
      stop: (e, ui) ->
        ui.item.removeClass('active-item-shadow')
        # highlight the row on drop to indicate an update
        ui.item.children('td').effect('highlight', {}, 1000)
      update: (e, ui) ->
        photo_id = ui.item.data('photo-id')
        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
        $.ajax(
          type: 'POST'
          url: '/admin/photos/update_skiing_order'
          dataType: 'json'
          data: { photo: {photo_id: photo_id, skiing_order_position: position } }
        )
    )
