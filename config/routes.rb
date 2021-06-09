Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  devise_for :admins, only: [:sessions]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  authenticated :user do
    root to: 'home#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')

  resources :home, only: [:index]

  namespace :admin do
    authenticated :admin do
      root to: 'customers#index', as: :authenticated_root
    end
    root to: redirect('/admins/sign_in')

    resources :customers, only: [:index]  do
        post :impersonate, on: :member
    end
  end
  
end
