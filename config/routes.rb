Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :posts #, only: [:index, :show]
end
