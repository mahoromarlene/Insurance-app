Rails.application.routes.draw do
  get "/", to: 'companies#index'
  get "/companies", to: 'companies#index'
  get "/companies/new", to: 'companies#new'
  post "/companies/search", to: 'companies#search'
  get "/companies/:id", to: 'companies#show'
  post "/companies", to: 'companies#create'
  get "/companies/:id/edit", to: 'companies#edit'
  patch "/companies/:id", to: 'companies#create'
  delete "/companies/:id", to: 'companies#destroy'
  get "/companies/insuranceservices/:id", to: "insuranceservices#show"

  get "/insuranceservices", to: 'insuranceservices#index'
  get "/insuranceservices/new", to: 'insuranceservices#new'
  get "/insuranceservices/:id", to: 'insuranceservices#show'
  post "/insuranceservices", to: 'insuranceservices#create'
  get "/insuranceservices/:id/edit", to: 'insuranceservices#edit'
  patch "/insuranceservices/:id", to: 'insuranceservices#create'
  delete "/insuranceservices/:id", to: 'insuranceservices#destroy'

  get "/signup", to: 'users#new'
  post "/users", to: 'users#create'

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "requests/new", to: 'requests#new'
  post "requests", to: 'requests#create'


end
