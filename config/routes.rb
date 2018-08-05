Rails.application.routes.draw do
  root :to => 'suppliers#index'

  resources :suppliers, :only => [:new, :create, :index] # 7 CRUD methods for suppliers
    get '/login' => 'session#new'
    post '/login' => 'session#create'
    delete '/login' => 'session#destroy'

    get '/session' => 'suppliers#index'

end
