require_relative 'main_controller'

class ListController < MainController
  get '/lists' do
    content_type :json
    lists = {
        :name => 'Main List',
        :description => 'Main list of TODO'
    }

    lists.to_json
  end
end
