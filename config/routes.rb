Rails.application.routes.draw do
  get 'landing_page/index'

  devise_for :users, controllers: {
  sessions: 'users/sessions'
  }

  # get 'customers/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "conversations#index"

  resources :conversations, only: [:index, :show]

  resources :loan_criterions, only: [:index]

  resources :customers, only: [:index, :show]

  resources :borrowing_capacity, only: [:create]

  get 'landing_page', to: 'landing_page#index'

end
