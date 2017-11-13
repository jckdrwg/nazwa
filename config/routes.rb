Rails.application.routes.draw do
  get 'sessions/new'

  resources :posts
  resources :topics
  resources :courses
  resources :students

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/courses/:id/follow', to: 'courses#follow'
  get '/courses/:id/follow', to: 'courses#follow'
  get '/courses/:id/unfollow', to: 'courses#unfollow'

  root to: 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
