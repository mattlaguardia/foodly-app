Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_aaq2unvoPqvoE0Fil7TPG7nB'],
  :secret_key      => ENV['sk_test_J6Dh4GniEJpSwRb21AAqAC66']

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]