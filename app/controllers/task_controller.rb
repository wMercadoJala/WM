require_relative 'main_controller'

class TaskController < MainController

  get '/tasks' do
    erb :'tasks/task'
  end

end