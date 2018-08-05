Rails.application.routes.draw do
  root :to => 'suppliers#index'


  get '/skill_categories' => 'skill_categories#index'

  post '/suppliers' => 'suppliers#search'

  resources :suppliers, :only => [:new, :create, :index] # 7 CRUD methods for suppliers

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/session' => 'suppliers#index'

end
