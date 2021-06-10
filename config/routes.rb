Rails.application.routes.draw do
  resources :categories
  resources :posts do
    resources :comments 
  end
  root to: 'pages#home'
  devise_for :users, :controllers =>{registrations: 'registrations'} 
  get 'search',to: "posts#search"
  get 'rails' ,to: "pages#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
