Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # NEW PRECISA VIR ANTES DE ID
  get "/tasks/new", to: "tasks#new"
  post "/tasks", to: "tasks#create"
  # GET 'LINK DPS DA /', to: ""
  get '/tasks', to: "tasks#index"
  # get 'tasks/1', to: "tasks#1"
  get "/tasks/:id", to: "tasks#show"
  # Task.all.each do |task|
  #   get "tasks/#{task.id}", to: 'tasks#task'
  # end
  # root "posts#index"
end
