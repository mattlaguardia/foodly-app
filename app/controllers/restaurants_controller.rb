class RestaurantsController < ApplicationController

  def index
    if current_user == nil
			redirect_to root_path, flash: {error: "You're not signed in!"}
		# else
  #     @yelp = Yelp.client.search(:city, {term: "restaurants"})
  #     @restaurant = @yelp.businesses
  #     @yelp.businesses
  #     render :index
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render :show
  end

end
