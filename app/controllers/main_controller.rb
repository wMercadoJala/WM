require 'sinatra/base'
# noinspection RubyResolve
require 'sinatra/reloader'

class MainController < Sinatra::Base
  register Sinatra::Reloader

  # noinspection RailsParamDefResolve
  configure do
    set(:public_folder, 'public')
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'password_security'
  end

  get '/' do
    'Hello, ToDo Application!!!'
  end
end