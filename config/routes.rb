Rails.application.routes.draw do

  devise_for :users

  # devise_scope :user do  
  #   get '/users/sign_out' => 'devise/sessions#destroy'     
  # end

  root to: "home#index"

  resources :home, only: [] do
    collection do
      get "dashboard" => "home#dashboard"
      get "get_disciplines" => "home#get_disciplines"
    end
  end

  resources :loads do
    resources :groups
  end

  resources :jumpers
  
end
