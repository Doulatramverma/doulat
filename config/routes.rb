Rails.application.routes.draw do
  resources :products
  resources :categries
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :blogs do 
  	resources :comments
  end
  

   root 'blogs#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
