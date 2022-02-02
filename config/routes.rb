Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'

  get 'post/like/:post_id' => 'likes#save_likes', as: :like_post

    resources :users, only: [:index, :show]
    resources :posts, only: [:index, :show, :new, :create, :destroy]
end
