TaxesForCaitlin::Application.routes.draw do
  resources :expense_sources


  resources :income_methods


  resources :expense_items


  resources :income_items


  resources :expense_categories


  resources :income_categories


  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'finances_report', :to => 'pdf#finances_report'

  root :to => 'sessions#new'
end
