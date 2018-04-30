Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resource :posts do
  end

  resource :posts_list do
  end

  resource :rents_list do
  end

  resource :rent do
  end

  resource :users do
    get '/signup', to: 'users#new'

    get '/:id', to: 'users#show'
  end


  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resource :password_resets, only: [:new, :create, :edit, :update]
end
