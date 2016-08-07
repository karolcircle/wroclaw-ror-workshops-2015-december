Rails.application.routes.draw do
  resources :payments
  root to: "visitors#index"

  devise_for :users

  resources :students do
    get :subjects
  end

  resources :teachers do 
    get :subjects
  end

  resources :visitors

  get "report/subjects", to: "reports#subjects"
end
