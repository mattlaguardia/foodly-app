class RestaurantsController < ApplicationController

  def index
    if current_user == nil
			redirect_to root_path, flash: {error: "You're not signed in!"}
		else
      @restaurant = Restaurant.all
      render :index
      # current_user.restaurants.where()
      # .where query method in active record docs
      #index will calls all restaurants on the backend, the view will display them one at a time.
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render :show
  end

end
