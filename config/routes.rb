Rails.application.routes.draw do
  root "forums#index"

  resources :forums do
    resources :topics
  end
end
