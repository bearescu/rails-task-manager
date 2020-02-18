Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # verb_path '/path', to: 'controller_name#action_name'

  # READ ALL
  root to: 'tasks#index'

  # SEE ONE
  get '/tasks/:id', to: 'tasks#show', as: :display_task

  # CREATE - 2 REQUEST FORM
  # first request: get the empty form, the empty object task ready to be filled
  # in by the user
  get '/new', to: 'tasks#new', as: :new_task
  # second request, passing the params from the form and
  # creating the task instance
  post '/tasks', to: 'tasks#create'

  # EDIT/UPDATE - 2 REQUESTS PROCESS
  # first request: get the specific task instance that I want to modify,
  # thanks to the dynamic path (grabbing the task id in the url)
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # second request: passing the params and updating the task instance
  patch '/tasks/:id', to: 'tasks#update', as: :task

  # DELETE
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete_task
end
