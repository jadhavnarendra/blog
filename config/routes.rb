Rails.application.routes.draw do

  root :to => "home#index"
  get 'home/show'
  get 'home/new'
  get 'home/edit'
  get 'home/delete'
  
  devise_for :users, controllers: { sessions: 'users/sessions', registrations:"users/registrations", confirmation:"users/confirmation"  }

  #get 'users/index'
  get "articles/index"
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"
  resources :articles do
    resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end

