Rails.application.routes.draw do
  resources :scenes, only: [:index, :show]
  get "actions/:id", to: "actions#move", as: :action

  root "scenes#index"
end