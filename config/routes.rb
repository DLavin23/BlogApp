BlogApp::Application.routes.draw do
  
  root to: 'pages#home'
  
  resources :posts do 
    resources :comments
  end
  
  get 'home' => 'pages#home'
  
  get 'resources' => 'pages#resources'

  get 'about' => 'pages#about'

  get 'contact' => 'pages#contact'

  
end
