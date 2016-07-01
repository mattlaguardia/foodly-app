class RestaurantsController < ApplicationController

  def index
    if current_user == nil
			redirect_to root_path, flash: {error: "You're not signed in!"}
		else
      # create
      @restaurants = Restaurant.all
      render :index
    end
  end

## POSTS JSON INFO INTO DATABASE FROM YELP ##
  def create
    ben = yelp.businesses
    ## ADD IF STATEMENT CHECKING WHATS IN THE DATABASE ##
    ben.each do |item|
      c = Restaurant.new(
      :name => item.name,
      :location => item.location.neighborhoods,
      :phone_numbers => item.display_phone,
      :featured_image => item.image_url,
      :thumb_url => item.url,
      :cuisines => item.categories,
      :aggregate_rating => item.rating
    )
      c.save
    end
  end


  def redeem
    if current_user
      render :redeem
    else
      redirect_to login_path
    end

  private

  def res_params
		params.require(:restaurant).permit(:name, :location, :phone_numbers, :featured_image, :thumb_url, :cuisines, :aggregate_rating)
	end

end
