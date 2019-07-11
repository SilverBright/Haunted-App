Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

authenticated :user do
    root 'haunts#index', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'devise/sessions#new'
  end

  resources :haunts do 
    collection do
      get :california
    end
    resources :comments
  end

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html