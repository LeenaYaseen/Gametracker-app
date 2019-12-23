Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root'companies#index'
  resources :companies, :games
  get "companies", to: "companies#index"
  get "companies/new", to: "companies#new"
  get "companies/:id", to: "companies#show" # , as: :company
  
  post "companies", to: "companies#create"
  get "companies/:id/edit", to: "companies#edit", as: :company_edit
  patch "companies/:id", to: "companies#update"
  delete "companies/:id", to: "companies#destroy"

  get "games", to: "games#index"
  get "games/new", to: "games#new"
  get "games/:id/edit", to: "games#edit" , as: :game_edit
  patch "games/:id", to: "games#update"
  delete "games/:id", to: "games#destroy"
  post "games", to: "games#create"
end
