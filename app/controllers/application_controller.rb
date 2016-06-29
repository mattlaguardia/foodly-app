class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success, :error

  include CanCan::ControllerAdditions
  include SessionsHelper
  require 'rubygems'
  require 'oauth'







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

  
  CONSUMER_KEY = 'uF1UI9OZxij161yg3mhRdQ'
  SECRET = 'yKNlfYlIBM91wAfmQuhceN2FOIU'
  TOKEN = 'MswYR5gpWd-Gh2QScGxeQr0IvCC-eyfq'
  TOKEN_SECRET = 'sHoCt6uOOyxtGa0-GE9JUqPtNR0'


  def location
    response = HTTParty.get "http://ipinfo.io"
    json = JSON.parse(response.body)
    location = json["city"]
    p location
    consumer = OAuth::Consumer.new( CONSUMER_KEY, SECRET, {:site => "http://api.yelp.com", :signature_method => "HMAC-SHA1", :scheme => :query_string})
    access_token = OAuth::AccessToken.new( consumer, TOKEN, TOKEN_SECRET)
    api = access_token.get("https://api.yelp.com/v2/search/?term=restaurants&location=" + location + "&sort=2&limit=20&radius_filter=8000")
    data = JSON.parse(api.body)
    p data

  end

end
