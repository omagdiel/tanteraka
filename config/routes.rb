Rails.application.routes.draw do

  resources :floor_plans do
    put :sort, on: :collection
  end

  resources :projects do
    put :sort, on: :collection
  end

  resources :pages do
    collection do
      get 'contact-me', to: 'pages#contact', as: 'contact'
      post 'contact-me', to: 'pages#create', as: 'create'
    end
  end
  # get 'contact-me', to: 'pages#contact', as: 'contact'
  # post 'contact-me', to: 'pages#create', as: 'create'

  get 'pages/home'

  # get 'pages/contact'
  # post 'contact-me', to: 'pages#create', as: 'create_message'

  root to:'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
