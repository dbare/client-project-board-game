// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
      var parrallax_obj = $('#parallax')
      // $('body').prepend(parrallax_obj)
      $(parrallax_obj).insertAfter('nav')
      $('.parallax').parallax();
});
