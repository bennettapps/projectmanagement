Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end
  
  get 'projects/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
