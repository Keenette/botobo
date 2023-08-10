Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # ecrire les routes pour  les exercices qui sont dans une categorie
  # ecrire les routes  pour les catégories qui sont dans un subscription
  # ecrire les routes pour les subscriptions qui sont dans un user

  resources :exercices do
    resources :categories
  end

  resources :categories do
    resources :subscriptions
  end
  resources :subscriptions do
    resources :users
  end
end
