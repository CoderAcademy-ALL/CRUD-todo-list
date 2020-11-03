Rails.application.routes.draw do
  devise_for :users


  root to: "homes#index"

  # routes long form
  # get '/tasks', to: 'tasks#index'
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks, to: tasks#create'

  resources :tasks
  
  get '/user' => "tasks#index", :as => :user_root

end
