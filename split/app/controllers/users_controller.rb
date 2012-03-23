class UsersController < ApplicationController
  def index
    finished("signup_title", reset: false)
  end

  def new
  end
end
