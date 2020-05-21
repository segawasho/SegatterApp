Rails.application.routes.draw do

  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'
  post 'likes/:post_id/create_index' => 'likes#create_index'
  post 'likes/:post_id/destroy_index' => 'likes#destroy_index'

  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  get 'users/index' => 'users#index'
  get 'signup' => 'users#new'
  post 'users/create' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'
  get 'users/:id/destroy_form' => 'users#destroy_form'
  post 'users/:id/destroy' => 'users#destroy'
  get 'users/:id/likes' => 'users#likes'
  get 'users/:id' => 'users#show'

  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'

  post 'comments/:id/create' => 'comments#create'
  post 'comments/:id/destroy' => 'comments#destroy'

  get '/' => 'home#top'
  get 'about' => 'home#about'
  get 'verinfo' => 'home#verinfo'
  get 'verinfo/ver2' => 'home#verinfo_ver2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
