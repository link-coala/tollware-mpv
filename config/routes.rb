Rails.application.routes.draw do
  get 'orders/create'
  get 'orders/new'
 
  get 'products/home'

  root 'products#home'

     resources :products 
     resources :orders



end
