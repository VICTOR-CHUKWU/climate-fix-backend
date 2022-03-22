if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_TEST"
else
  Rails.application.config.session_store :cookie_store, key: "_TEST"
end