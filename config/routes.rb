Rails.application.routes.draw do
  devise_for :users
  resource :users
  root 'user#home'
end
