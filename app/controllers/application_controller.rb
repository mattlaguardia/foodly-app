class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success, :error

  include CanCan::ControllerAdditions
  include SessionsHelper
  require 'json'
  require 'open-uri'

  def location
    response = HTTParty.get "http://ipinfo.io"
    json = JSON.parse(response.body)
    location = json["city"]
    print location
    return location
  end

  def yelp
    Yelp.client.search(location, {term: "restaurants"})
  end

  def search
    render json: yelp.businesses
  end



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
