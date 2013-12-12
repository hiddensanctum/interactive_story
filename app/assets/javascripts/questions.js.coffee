# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	$(".fadeFast").each ->
  $this = $(this)
  $this.before "<div>&nbsp;</div>"
  $this.prev().remove()
  $this.fadeIn Math.floor(500)

$(document).ready(ready)
$(document).on('page:load', ready)
