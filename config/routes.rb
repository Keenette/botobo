Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :exercices, only: [:index, :show]

  resources :categories, only: [:index, :show] do
    resources :exercices, only: [:index, :show]
  end

  resources :subscriptions

  # Cette route est pour les utilisateurs qui veulent voir ou gérer leurs abonnements
  get 'my_subscriptions', to: 'subscriptions#user_subscriptions', as: 'user_subscriptions'

end

