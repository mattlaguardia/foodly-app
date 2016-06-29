Rails.configuration.stripe = {
  :publishable_key => ENV['pub_key'],
  :secret_key      => ENV['sec_key']

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]