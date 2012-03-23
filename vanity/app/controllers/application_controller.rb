class ApplicationController < ActionController::Base
  protect_from_forgery
  use_vanity :current_user
end
