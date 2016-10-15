# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.masonery_area').imagesLoaded ->
    $('.masonery_area').masonry
      itemSelector: '.single-blog'
      isFitWidth: true