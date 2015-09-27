Rails.application.routes.draw do
  
  get 'product_details/show'

  get 'category/index'
  get 'products/index'

  root 'welcome#index'

  resources :category do
  end 

  resources :products do
    collection { post :import }
  end

end
