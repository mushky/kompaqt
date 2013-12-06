Kompaqt::Application.routes.draw do
  resources :pics do
  	member do
      post :vote_up
    end
  end

  devise_for :users
  root "pics#index"
  get "about" => "pages#about"
  get "contact" => "pages#contact"
end
