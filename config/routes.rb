Rails.application.routes.draw do
  get 'line_items/index'

  get 'orders/create'
  get 'orders/new'
 
  get 'products/home'

  root 'products#home'

     resources :products 
     resources :orders
     resources :line_items



end
