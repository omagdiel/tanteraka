Rails.application.routes.draw do
  resources :floor_plans
  resources :projects
  resources :pages do
    collection do
      get 'contact'
      post 'contact'
    end
  end
  get 'pages/home'

  # get 'pages/contact'
  # post 'contact-me', to: 'pages#create', as: 'create_message'

  root to:'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
