if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_LxLcbPL889pWdtN4fBinlwGh',
    :secret_key => 'sk_test_kiadDnf6IjMuSi3GwG0vuN4b'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]