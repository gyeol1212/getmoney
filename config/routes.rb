Rails.application.routes.draw do
  devise_for :users
  get 'comments/create'

  get 'comments/destroy'

  resources :freeposts do
    resources :comments
  end
  get 'check_n/index'

  get 'check_n/yes'

  get 'check_n/no'

  resources :post_ns do
    resources :check_n
  end
  get 'check/index'

  resources :posts do
    #scaffold에 다른 액션도 추가할 때
    collection do
      get 'all'
    end
  end

  get 'check/yes'

  get 'check/no'

  get 'table/create'

  get 'table/destroy'

  resources :posts do
    resources :table , only: [:create, :destroy]
    resources :check
  end
  get 'home/index'

  get 'home/login'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
