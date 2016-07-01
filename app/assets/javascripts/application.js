// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require d3
//= require_tree .

$(document).ready(function(){
  $(".button-collapse").sideNav();
  $('.parallax').parallax();

  $(".like-button").parent().click(function(event){
    event.preventDefault();
    $target = $(event.target);
    $target.attr("disabled", "true");
    $form = $target.parent();

    $.ajax({
      type: $form.attr('method'),
      url: $form.attr('action'),
      data: $form
      dataType: "JSON"
    }).done(function(res){
      console.log(res);
      // $form.parent().children('').html(res.likes);
    });
  });

  $(function(){
    $(".like-button").on("click", function(event){
      console.log("Swiped!")
    });
  })
  $(function(){
    $(".dislike-button").on("click", function(event){
     console.log("Swiped!")
    });
  })
  // AJAX CALL TO RENDER IN REAL TIME WITHOUT A PAGE REFRESH //
})
