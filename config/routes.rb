Rails.application.routes.draw do
  devise_for :users
  root to: "lists#index"
  root to: "items#index"

    resources :lists do
      resources :items
    end

end
