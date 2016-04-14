Rails.application.routes.draw do
  root "forums#index"

  resources :forums
end
