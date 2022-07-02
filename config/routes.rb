Rails.application.routes.draw do
  resources :items do
    resources :realizations, only: [:destroy]

    get :mark_as_done, on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"
end
