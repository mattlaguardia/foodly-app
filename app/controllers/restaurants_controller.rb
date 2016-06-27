class RestaurantsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:id])
    render :index
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    render :show
  end

end
