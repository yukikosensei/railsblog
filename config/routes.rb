Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "articles#index"
  # get "/new", to: "articles#new"
  # post "/articles", to: "articles#create", as: "create_articles"
  # get "/articles", to: "articles#edit", as: "edit_articles"
  # patch "/articles/:id/update", to: "articles#update", as: "update_articles"

  resources :articles
  resources :comments

end
