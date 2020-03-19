Rails.application.routes.draw do
  # Good work setting only the routes you needed.
  resources :dogs, only: [:index, :show]
  resources :employees
end
