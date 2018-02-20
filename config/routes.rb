Rails.application.routes.draw do

  root 'stagic_pages#home'

  # controller method
  get '/about', to: 'static_pages#about'

  
  # standar controller
  resources :pages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
