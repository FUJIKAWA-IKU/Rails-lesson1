Rails.application.routes.draw do
  get 'posts/index', to:'posts#index'
  get 'posts/new', to:'posts#new'
  post 'posts/create', to:'posts#create'
  post 'posts/:id/update', to:'posts#update'
  get 'posts/:id/destroy', to:'posts#destroy'
  get 'posts/:id/edit', to:'posts#edit'
  get 'posts/:id', to:'posts#show'
  get 'home/top', to:'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
