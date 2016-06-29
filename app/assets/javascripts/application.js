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
//= require_tree .
//= require d3

$(document).ready(function(){
  $(".button-collapse").sideNav();
  $('.parallax').parallax();
  $(".like-button").click(function(){
    $(this).parent().hide();
  })
  // $.getJSON('http://ipinfo.io', function(data){
  //   var location = data.loc;
  //   var coor = location.split(',');
  //   var lat = coor[0];
  //   var lon = coor[1];
  //   return lat, lon;
  //   })
    // function googleLocation(lat, lon){
    //   console.log(lat, lon);
    //   $.ajax({
    //           url: "https://developers.zomato.com/api/v2.1/geocode?lat=" + lat + "&lon=" + lon,
    //           dataType: "json",
    //           headers: {"user-key": "53a6837453069a733fdec04247d832eb"}
    //   })
    // }
})
