Rails.application.routes.draw do
  root "images#index"
  resources :images do
    resources :comments
  end
end
