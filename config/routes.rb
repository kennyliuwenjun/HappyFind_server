Rails.application.routes.draw do
  post '/supplier_token' => 'supplier_token#create'
  root :to => 'suppliers#index'

  get '/skill_categories' => 'skill_categories#index'

  get '/suppliers/:id/services' => 'services#supplier_services'

  get '/suppliers' => 'suppliers#index'
  post '/search_suppliers' => 'suppliers#search'

  resources :suppliers
  resources :services, :only => [:index]
  resources :orders, :only => [:index, :new, :create]

  get '/supplier/:id' => 'suppliers#getSupplier'
  post '/supplier/update' => 'suppliers#update'

  post '/orders/create' => 'orders#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/session' => 'suppliers#index'

end
