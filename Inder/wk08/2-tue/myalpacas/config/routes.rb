Rails.application.routes.draw do
  #resources :alpacas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #create alpacas - new
  get '/alpacas/new', to: 'alpacas#new'
  post '/alpacas', to: 'alpacas#create'

  #read alpacas - display list
  get '/alpacas', to: 'alpacas#index'
  get '/alpacas/:id', to: 'alpacas#show'


  #update - edit 
  get '/alpacas/:id/edit', to: 'alpacas#edit'
  put '/alpacas/:id', to: 'alpacas#update'

  #destroy 
  delete '/alpacas/:id', to: 'alpacas#destroy'

#controller name & method
  get '/about', to: 'pages#about'
  get '/', to: 'pages#home'
end
