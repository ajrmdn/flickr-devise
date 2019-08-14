Rails.application.routes.draw do
  devise_for :users
  root to: 'flicks#index'
  resources :users do
    resources :flicks
  end

  get '/revenge' => 'revenge#index'
end
