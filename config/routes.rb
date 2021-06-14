Rails.application.routes.draw do
  resources :categories
  resources :posts do
    resources :comments 
  end
  devise_scope :user do
    authenticated :user do
      root 'posts#index', as: :authenticated_root
    end
      unauthenticated do
        root 'devise/sessions#new', as: :unauthenticated_root
      end
  end 
  devise_for :users, :controllers =>{registrations: 'registrations'} 
  get 'search',to: "posts#search"
  get 'rails' ,to: "pages#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
