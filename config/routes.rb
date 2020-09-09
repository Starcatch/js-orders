Rails.application.routes.draw do
  
  namespace :api do
    resources :items
    resources :odrers
  end
end
