require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key =ENV["CONSUMER_KEY"]
  config.consumer_secret = EVN["CONSUMER_SECRET"]
  config.token = ENV["YELP_TOKEN"]
  config.token_secret = ENV["YELP_TOKEN_SECRET"]
end
