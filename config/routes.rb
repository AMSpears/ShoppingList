Rails.application.routes.draw do
  devise_for :users
  root to: "lists#index"
  # root to: "items#index"
    resources :lists do
      resources :items, except: [:index, :show]
    end

    resources :items, only: [:index, :show] do
      member do
       post 'add_stack'
       delete 'remove_stack'
       end
    end
end
