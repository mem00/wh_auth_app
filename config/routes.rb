Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  resources :home, only: [:index]

  namespace :admin do
    resources :customers, only: [:index]

    devise_for :users, only: [:sessions], controllers: { sessions: "admin/users/sessions" }
  end
  
end
