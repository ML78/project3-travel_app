Rails.application.routes.draw do
  resources :itineraries
  resources :activities
  resources :locations
  resources :users

  get '/login' => 'session#new'       # Sign in form
  post '/login' => 'session#create'    # Sign in action
  delete '/login' => 'session#destroy' # Sign out

  get '/home' => 'pages#home'
  root :to => 'pages#home'

  # root :to => 'session#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
