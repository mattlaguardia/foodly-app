require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = 'j5SsKIRZLQzusOiHYbNBlw',
  config.consumer_secret = 'ym399js01IJtLcFEBNAjFKobMFs',
  config.token = 'OtNjMbCgpVQDYbEA-bPe6qZPYE22uX9_',
  config.token_secret = 'BtYkEIXNPDcCTYkETO8RYyGaWoo'
end
params = {
  term: 'food',
  limit: 3
}
locale = {
  lang: 'en'
}
@restaurant = Yelp.client.search('San Francisco', params, locale)