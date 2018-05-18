Rails.application.routes.draw do
  get 'check/index'

  get 'check/yes'

  get 'check/no'

  get 'table/create'

  get 'table/destroy'

  resources :posts
  get 'home/index'

  get 'home/login'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
