require 'sinatra/base'
require 'sinatra/reloader'

class MainController < Sinatra::Base
  register Sinatra::Reloader

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

  get '/' do

    "Hello, ToDo Application!!!"
  end
end