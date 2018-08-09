Rails.application.routes.draw do
   resources :bookmarks, except: [:destroy]



  #create
  #get '/bookmarks/new', to: 'bookmarks#new'
  #post '/bookmarks', to: 'bookmarks#create'

  #read
  #get '/bookmarks', to: 'bookmarks#index'
  #get '/bookmarks/:id', to: 'bookmarks#show'


  #update
  #get '/bookmarks/:id/edit', to: 'bookmarks#edit'
  #put '/bookmarks/:id', to: 'bookmarks#update'

  #destroy
  #delete '/bookmarks/:id', to: 'bookmarks#destroy'



                      #controller name & method
  get '/recent', to: 'bookmarks#recent'
  get '/neglected', to: 'bookmarks#neglected'
  get '/archived', to: 'bookmarks#archived'
  get '/about', to: 'pages#about'
  get '/', to: 'pages#home'
  put '/archive/:id', to: 'bookmarks#archive'
end
