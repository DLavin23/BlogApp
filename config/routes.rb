BlogApp::Application.routes.draw do
  
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root to: 'pages#home'
  
  resources :posts do 
    resources :comments
  end
  
  get 'home' => 'pages#home'
  
  get 'resources' => 'pages#resources'

  get 'about' => 'pages#about'

  get 'contact' => 'pages#contact'

  
end
