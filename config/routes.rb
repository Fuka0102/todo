Rails.application.routes.draw do
  root to: 'tasks#index' 
 
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
  

end
