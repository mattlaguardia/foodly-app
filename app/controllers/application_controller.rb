class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success, :error

  include CanCan::ControllerAdditions
  include SessionsHelper

  # def search
  #   client.search('San Francisco',{term: 'food',
  #                                  limit: 10,
  #   })
  # end
  #
  #
  def location
    response = HTTParty.get "http://ipinfo.io"
    json = JSON.parse(response.body)
    location = json["loc"]
    coor = location.split(',')
    lat = coor[0]
    lon = coor[1]
    p lat, lon
  end
  # #   # api = HTTParty.get "https://developers.zomato.com/api/v2.1/geocode?lat=" + lat + "&lon=" + lon + "&user-key=beca673a68b01183b7a1048f9ed2af93"
  #   api = HTTParty.get "https://api.yelp.com/v2/search?term=food&location=San+Francisco&oauth_consumer_key=j5SsKIRZLQzusOiHYbNBlw&oauth_token=OtNjMbCgpVQDYbEA-bPe6qZPYE22uX9_&oauth_signature_method=hmac-sha1&oauth_signature=BtYkEIXNPDcCTYkETO8RYyGaWoo&oauth_timestamp=" + Time.now.to_s + "&oauth_nonce=" + SecureRandom.base64 + ""
  #   data = JSON.parse(api.body)
  #   p data

  # end


    def current_user
      if session[:user_id]
        @current_user ||= User.find(session[:user_id])
      else
        nil
      end
    end

  helper_method :current_user

  def authorize
    redirect_to "/home" unless current_user
  end

end
