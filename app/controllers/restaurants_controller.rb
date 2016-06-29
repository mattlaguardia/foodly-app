class RestaurantsController < ApplicationController


  # def location
  #   response = HTTParty.get "http://ipinfo.io"
  #   json = JSON.parse(response.body)
  #   location = json["loc"]
  #   coor = location.split(',')
  #   lat = coor[0]
  #   lon = coor[1]
  #   p lat, lon
  #   api = HTTParty.get "https://developers.zomato.com/api/v2.1/geocode?lat=" + lat + "&lon=" + lon + "&user-key=53a6837453069a733fdec04247d832eb"
  #   data = JSON.parse(api.body)
  #   p data
  #
  # end

# def coordinates
#   response = get("")
#   coor = response.split(',')
#   lat = coor[0]
#   lon = coor[1]


  # base_uri "https://developers.zomato.com/api/v2.1/geocode?lat=" + lat + "&lon=" + lon + "&user-key=53a6837453069a733fdec04247d832eb"




  def index
    location
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
