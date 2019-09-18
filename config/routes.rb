Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, except: %i[update edit destroy] do
    resources :reviews, only: %i[new create]
  end
end
