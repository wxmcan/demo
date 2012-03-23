class UsersController < ApplicationController
  def new
  end

  def signup
    track! :signups
  end
end
