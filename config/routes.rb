Rails.application.routes.draw do
  devise_for :users
  root to: 'flickr#index'

  resources :images

  resources :users do
    resources :images
  end

  post '/users/:id' => 'users#create'

end
