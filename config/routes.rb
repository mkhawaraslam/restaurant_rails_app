Rails.application.routes.draw do

  root to: "home#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users, controllers: {sessions: 'users/registrations'}

  devise_for :users, controllers: {sessions: 'users/sessions',
   registrations: 'users/registrations'}

   resources :menus, only: [:index] do
   	resources :products, only: [:index]
   end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
