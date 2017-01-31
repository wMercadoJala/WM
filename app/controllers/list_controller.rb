require_relative 'main_controller'

class ListController < MainController

  get '/lists' do
    "Hello, List Controller!"
  end

end