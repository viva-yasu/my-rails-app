Rails.application.routes.draw do
  resources :images do
    resources :comments
  end
end
