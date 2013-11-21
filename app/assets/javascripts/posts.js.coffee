# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.button_to').on 'ajax:success', (e, resp) ->
    $(".votes-count[data-id=#{resp.id}]").text(resp.votes)
    