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
  }
  //   $.ajax({
  //     dataType: "json",
  //     type: "get",
  //     url: "/restaurants/#{params[;restaurant_id]}",
  //     data: { restaurant_name: name, restaurant_location: location },
  //
  //     success: function(success){
  //       appendUl();
  //       showRestaurants(success);
  //     }
  //   });
  // });
})
  //     function appendUl(){
  //       var template = $("script.restaurants_list").html();
  //       var rendered = _.template(template);
  //       $(".single-form").append(rendered);
  //     }
  //     function showRestaurants(success) {
  //       restaurants = success["restaurants"];
  //       if (restaurants.length > 0) {
  //         success['restaurants'].forEach(function(restaurant){
  //           var template = $("script.list-restaurant").html();
  //           var rendered = _.template(template, { restaurant: restaurant});
  //
  //           $("").append(rendered);
  //   }
  // }
  // })

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
