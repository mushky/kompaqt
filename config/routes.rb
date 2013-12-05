Kompaqt::Application.routes.draw do
  resources :pics

  devise_for :users
  root "pics#index"
  get "about" => "pages#about"
  get "contact" => "pages#contact"
end
