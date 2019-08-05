Rails.application.routes.draw do
  resources :guests
  resources :hosts

  root to: "hosts#index"
end
