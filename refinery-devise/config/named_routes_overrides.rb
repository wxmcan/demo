Rails.application.routes.draw do
  devise_for :users, :controllers=>{:sessions=>"users/sessions"} do
   #any additional user session routes would be defined here
  end

  get "static/home", :as=>"user_root"
end
