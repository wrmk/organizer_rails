Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/projects', to: 'project#index'
  post '/todos', to: 'todos#create'

      resources :projects, controller: 'project' do
        resources :todos
      end
end
