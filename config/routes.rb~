CrunchTime::Application.routes.draw do
  resources :groups
  resources :users
  resource :sessions

  match 'user/edit' => 'users#edit', :as => :edit_current_user
  match 'signup' => 'users#new', :as => :signup
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'login' => 'sessions#new', :as => :login
  root :to => "home#index"

  match 'home' => 'home#index', :as => :home
  match 'about' => 'home#about', :as => :about



end
