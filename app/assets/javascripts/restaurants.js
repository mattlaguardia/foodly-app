// $(document).ready(function(){
//
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
// function appendUl(){
//   var template = $("script.restaurants_list").html();
//   var rendered = _.template(template);
//   $(".single-form").append(rendered);
// }
// function showRestaurants(success) {
//   restaurants = success["restaurants"];
//   if (restaurants.length > 0) {
//     success['restaurants'].forEach(function(restaurant){
//       var template = $("script.list-restaurant").html();
//       var rendered = _.template(template, { restaurant: restaurant});
//
//       $("").append(rendered);
//     })
//   }
// }
