Rails.application.routes.draw do
  resources :news_feeds
  resources :dashboards
  devise_for :users
  resource :users
  root 'user#home'

  devise_scope :user do get "/sign_out" => "devise/sessions#destroy"
  # get '/sign_out' => 'devise/sessions#destroy'
  end
end
