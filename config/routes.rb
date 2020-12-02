Rails.application.routes.draw do
  namespace :api do
    resources :quotes, only: [:show]
  end
end
