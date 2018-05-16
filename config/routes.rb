Rails.application.routes.draw do
  #create
  get '/comments/new'
  post '/comments' => 'comments#create'
  
  #read
  get '/comments/:id' => 'comments#show'
  get '/comments' => 'comments#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
