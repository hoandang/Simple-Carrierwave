# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $(".thumb").hover \
   ( -> $(this).children(".remove_edit").fadeIn(200)),
   ( -> $(this).children(".remove_edit").fadeOut(200))
