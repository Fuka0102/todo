Rails.application.routes.draw do
  get "/" => "tasks#index"
  get "/tasks/new" => "tasks#new"
  get "/tasks/:id" => "tasks#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
  
end
