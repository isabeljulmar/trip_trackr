Rails.application.routes.draw do
  root 'locations#index'
  #will change root_path to trips#index later
  #will add nested resources under trips later
  resources :songs
end
