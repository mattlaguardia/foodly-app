class RestaurantUsersController < ApplicationController
	def create
		@restaurant_user=RestaurantUser.find_by_user_id(params[:user_id])
		user = User.find(params[:user_id])
		restaurant = Restaurant.find(params[:restaurant_id])
		redirect_to restaurants_path
	end
end
