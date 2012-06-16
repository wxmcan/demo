Mailboxer::Application.routes.draw do
  get "home/index"

  mount Messaging::Engine => "/messaging"

  devise_for :messaging_users
  root :to => 'home#index'
end
