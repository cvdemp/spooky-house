Rails.application.routes.draw do
  root 'games#index'

  devise_for :users

  resources :games do
    resources :characters
  end

  resources :characters

end
