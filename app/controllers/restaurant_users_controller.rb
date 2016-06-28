class RestaurantUsersController < ApplicationController
	def create
		user = User.find(params[:user_id])
		@restaurant = Restaurant.find(params[:restaurant_id])
		ben = user.restaurants.push(@restaurant)
		params[:restaurant_users][:user_id] = @benben
		p @benben
		redirect_to restaurants_path
	end
end
