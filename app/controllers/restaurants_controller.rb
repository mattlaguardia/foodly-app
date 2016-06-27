class RestaurantsController < ApplicationController

  def index
    @restaurant = Restaurant.all
    render :index
    #index will calls all restaurants on the backend, the view will display them one at a time.
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    render :show
  end

end
