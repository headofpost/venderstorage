Rails.application.routes.draw do
  resources :furnitures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/furnitures' => 'furnitures#index', as: :index_furniture
  get '/furnitures/show/:id' => 'furnitures#show', as: :show_furniture
  get '/furnitures/new' => 'furnitures#new'
  post '/furnitures' => 'furnitures#create'
  get '/furniture/:id/edit' => 'furnitures#edit'
  patch '/furnitures/:id' => 'furnitures#update'
  get 'furnitures/:id/delete' => 'furnitures#destroy', as: :delete_furniture
  
end
