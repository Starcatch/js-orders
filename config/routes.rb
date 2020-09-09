Rails.application.routes.draw do
  
 
  namespace :api do
    resources :items
    resources :orders
    
  end
end
