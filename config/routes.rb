Rails.application.routes.draw do
  root to: 'cocktails#index'
  # get 'ingredients/index'
  # get 'ingredients/show'
  # get 'ingredients/new'
  # get 'ingredients/create'
  # get 'ingredients/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
  resources :ingredients, only: [:index, :new, :create, :destroy]

end
