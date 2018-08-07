Rails.application.routes.draw do
  root :to => 'suppliers#index'

  get '/skill_categories' => 'skill_categories#index'

<<<<<<< HEAD
  get '/orders' => 'orders#send_test_order'
=======
>>>>>>> 87deea5f5f81874f07fc7e05870cb8ecd8fbc825
  get '/suppliers/:id/services' => 'services#supplier_services'

  get '/suppliers' => 'suppliers#index'
  post '/search_suppliers' => 'suppliers#search'

  resources :suppliers, :only => [:new, :create, :index] # 7 CRUD methods for suppliers
  resources :services, :only => [:index]
  resources :orders, :only => [:index, :new, :create]

  post '/orders/create' => 'orders#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/session' => 'suppliers#index'

end
