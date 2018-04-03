Rails.application.routes.draw do
  resources :floor_plans
  resources :projects
  get 'pages/home'

  get 'pages/contact'

  root to:'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
