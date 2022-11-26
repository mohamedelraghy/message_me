Rails.application.routes.draw do
  get 'users/new'

  get 'messages/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "chatroom#index"
  get 'login', to: "sessions#new"
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  mount ActionCable.server, at: '/cable'
end
