class RestaurantsController < ApplicationController

  def index
    if current_user == nil
			redirect_to root_path, flash: {error: "You're not signed in!"}
		else
      create
      @restaurants = Restaurant.all
      render :index
    end
  end

## POSTS JSON INFO INTO DATABASE FROM YELP ##
  def create
    restaurants = yelp.businesses
    restaurants.each do |item|
      create = Restaurant.new(
      :name => item.name,
      :location => item.location.neighborhoods,
      :phone_numbers => item.display_phone,
      :featured_image => item.image_url,
      :thumb_url => item.url,
      :cuisines => item.categories,
      :aggregate_rating => item.rating,
      :yelp => item.id
    )
      create.save
    end
  end

  def show
    create
    @restaurants = Restaurant.all
    render :show
  end

  def redeem
   if current_user
     render :redeem
   else
     redirect_to login_path
   end
 end

  private

  def res_params
		params.require(:restaurant).permit(:name, :location, :phone_numbers, :featured_image, :thumb_url, :cuisines, :aggregate_rating)
	end

end
