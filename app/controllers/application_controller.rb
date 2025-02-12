class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  config.middleware.use Rack::MethodOverride
  allow_browser versions: :modern
end
