Rails.application.routes.draw do
  get 'store_assortments/import'
  resources :daily_assortments, :sub_categories, :sub_families, defaults: {format: :json}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
