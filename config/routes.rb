Rails.application.routes.draw do
  resources :trips do
    resources :locations
  end

  resources :locations
end
