Rails.application.routes.draw do

  devise_for :users

  # devise_scope :user do  
  #   get '/users/sign_out' => 'devise/sessions#destroy'     
  # end

  root to: "home#index"
  resources :home, only: [] do
    collection do
      get "dashboard" => "home#dashboard"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
