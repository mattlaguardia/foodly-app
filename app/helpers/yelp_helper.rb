module YelpHelper
  def self.ask_for_restaurants
    YelpHelper::api_call_restaurants(local)["businesses"].map do |restaurant|
      {
        name: restaurant["name"],
        city: restaurant["location"]["city"],
        image_url: restaurant["image_url"],
        url: restaurant["url"],
        rating_image_url: restaurant["rating_image_url"],
        yelp_id: restaurant["id"]
      }
    end
  end

  def location
    response = HTTParty.get "http://ipinfo.io"
    json = JSON.parse(response.body)
    location = json["city"]
    return location
  end

  def self.api_call_restaurants(local)
    search_location = location

    consumer_key = uF1UI9OZxij161yg3mhRdQ
    consumer_secret = '#{yKNlfYlIBM91wAfmQuhceN2FOIU}'
    token = '#{MswYR5gpWd-Gh2QScGxeQr0IvCC-eyfq}'
    token_secret = '#{sHoCt6uOOyxtGa0-GE9JUqPtNR0}'

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    path = "/v2/search/?term=restaurants&location=#{search_location}&sort=2&limit=20&radius_filter=8000"

    JSON(access_token.get(path).body)
  end
end
