# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :twitter,
#   Rails.application.secrets.twitter_api_key,
#   Rails.application.secrets.twitter_api_secret
# end
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,
    Rails.application.secrets.api_key,
    Rails.application.secrets.api_secret
end
