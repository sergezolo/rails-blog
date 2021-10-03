Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Home Page
  root 'posts#index', as:'home'
  # About Page
  get 'about' => 'pages#about', as: 'about'
  # Posts routes
  resources :posts do
    resources :comments
  end
end
