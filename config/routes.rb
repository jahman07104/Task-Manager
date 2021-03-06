Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tickets do
    resources :troubleshooting_tasks
  end

  resources :user_troubleshooting_tasks, only: :update

  root to: 'tickets#index'
end
