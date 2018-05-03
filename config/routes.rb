Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resource :posts do
    
  end

  resource :products do
    
  end

  resource :products_list do
  end
  
  resource :posts_list do
  end

  resource :rents_list do
  end

  resource :rents do
  end

  resource :users do
    get '/signup', to: 'users#new'

    get '/:id', to: 'users#show'
  end


  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
end
