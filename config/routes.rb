Rails.application.routes.draw do
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  #get 'user/create'
  #get 'user/new'
  #get 'user/index'
  
  
  root 'user#index'
  get '/signup' => 'user#new'
  post '/signup' => 'user#create'
  get '/' => 'user#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

 
  #root 'sessions#new'
  #root 'student#list'
 # resources :student
  get 'students/new'
  post 'students/create'
  patch 'students/update'
  get 'students/list'
  get 'students/show'
  get 'students/edit'
  get 'students/delete'
  get 'students/update'


  







  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
