Rails.application.routes.draw do
  devise_for :users
  root "forums#index"

  resources :forums do
    resources :topics
  end
end
