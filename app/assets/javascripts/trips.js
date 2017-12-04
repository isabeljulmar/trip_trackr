// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//Adds animation class to trips list on yoga img click
$(document).ready(function(){
  $('#yoda').click(function(){
    $('body').addClass('animate-class')
    $('#resize').css('animation', 'crawl 35s linear')
  })
})
