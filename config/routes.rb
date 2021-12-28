Rails.application.routes.draw do

  root to:"home#index" 

  get "transactions", to: "transactions#index"

  get "accounts", to: "accounts#index"

  get "reports", to: "reports#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
