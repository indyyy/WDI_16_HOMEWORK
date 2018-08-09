Rails.application.routes.draw do
  
  root 'houses#index' 

  #resources :houses
  #resources :students

  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show]
  
  #get '/houses/:id', to: 'houses#show'
  #get '/students/:id', to: 'students@show'
end
