require 'sinatra/base'

class Blagger < Sinatra::Base
  get '/' do
    'Hello Blagger!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
