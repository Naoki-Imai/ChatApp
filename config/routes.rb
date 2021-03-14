Rails.application.routes.draw do
  get 'rooms/show' => 'rooms#show'
  root 'top#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users, only: [:show, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end