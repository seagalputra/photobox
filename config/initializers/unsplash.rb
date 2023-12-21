# frozen_string_literal: true

if Rails.application.credentials[:unsplash]
  Unsplash.configure do |config|
    config.application_access_key = Rails.application.credentials.unsplash.access_key!
    config.application_secret = Rails.application.credentials.unsplash.secret_key!
    config.application_redirect_uri = 'http://127.0.0.1:3000/oauth/callback'
    config.utm_source = 'photobox_app'
  end
end
