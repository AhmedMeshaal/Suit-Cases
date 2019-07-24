Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get 'pages/home'
get "/cases/:id/accepeted", to: "cases#accept"

   root 'cases#index'
   resources :cases
   
  get "cases", to: "cases#index"
  get "cases/:id/edit", to: "cases#edit", as: :cases_edit
  get "cases/:id/profile", to: "cases#profile", as: :cases_profile

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
