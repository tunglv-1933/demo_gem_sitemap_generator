Rails.application.routes.draw do
  root to: 'pages#index'

  resources :categories do
    resources :posts
  end
end
