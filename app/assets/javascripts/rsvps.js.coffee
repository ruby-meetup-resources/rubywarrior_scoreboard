$ ->
  show_hide_accom = ->
    if /Andrews/.test($('#rsvp_accommodation').val()) == true
      $('#specific-days').show('fast')
    else
      $('#specific-days').hide()

  show_initially_hidden = ->
    $('.initially_hidden').show('fast')
    $('.initial_buttons').hide()

  $('#rsvp_accommodation').change ->
      show_hide_accom()

  $('.coming').click ->
      show_initially_hidden()

  show_hide_accom()

