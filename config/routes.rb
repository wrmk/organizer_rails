Rails.application.routes.draw do
  
  get '/projects', to: 'project#index'
  post '/todos', to: 'todos#create'

  resources :projects, controller: 'project' do
    resources :todos
  end
end
