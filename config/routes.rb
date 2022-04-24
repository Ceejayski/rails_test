Rails.application.routes.draw do
  root 'lists#index'

  resources :lists, except: %i[update edit] do
    resources :todos, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
