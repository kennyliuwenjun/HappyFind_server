Rails.application.routes.draw do
  root :to => 'suppliers#index'


  get '/skill_categories' => 'skill_categories#index'

<<<<<<< HEAD
  post '/search_suppliers' => 'suppliers#search'
=======
  get '/suppliers' => 'suppliers#index'
>>>>>>> 4cc0565926cc86d227c05a8b5414beae1e01cf2b

  resources :suppliers, :only => [:new, :create, :index] # 7 CRUD methods for suppliers

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/session' => 'suppliers#index'

end
