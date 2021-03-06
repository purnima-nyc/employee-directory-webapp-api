Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :employees

    post '/signup' => 'employees#signup'
    post '/add' => 'employees#create'
    post '/edit' => 'employees#update'
    post '/login' => 'sessions#login'
    post '/find' => 'sessions#find'
    get '/logout' => 'sessions#destroy'
    get '/search/:name' => 'employees#search'

  end 
end
