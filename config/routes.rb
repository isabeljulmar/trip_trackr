Rails.application.routes.draw do
  root 'trips#index'

  resources :trips do
    resources :locations
  end

  get '/new_no_nest', to: 'locations#new_no_nest', as: 'new_no_nest'
  post '/no_nest_create', to: 'locations#no_nest_create', as: 'no_nest_create'
end
