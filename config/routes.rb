BlogApp::Application.routes.draw do
  
  resources :posts

  root to: 'pages#home'
  
  get 'home' => 'pages#home'

  get 'about' => 'pages#about'

  get 'contact' => 'pages#contact'

  
end
