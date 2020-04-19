Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  root to: 'home#index'

  # http://localhost:3000/users/:id to the user controller's show action,
  # with :id is ID of current user. If ID of current user is 1, path point
  # to user profile page is http://localhost:3000/users/1
  resources :users, only: [:show, :edit, :update]
end
