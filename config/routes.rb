Rails.application.routes.draw do
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
  end
end
