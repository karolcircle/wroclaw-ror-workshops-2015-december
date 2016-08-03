Rails.application.routes.draw do
  root to: "visitors#index"

  devise_for :users

  resources :students do
    get :subjects
  end

  resources :teachers

  resources :visitors
end
