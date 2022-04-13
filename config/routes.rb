Rails.application.routes.draw do
  resources :product_urls
  root "blogs#index"
  resources :products
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
