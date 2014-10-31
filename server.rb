require 'sinatra/base'
require 'data_mapper'
env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/blagger_#{env}")

require './lib/post'

DataMapper.finalize
DataMapper.auto_upgrade!

class Blagger < Sinatra::Base
  get '/' do
    @posts = Post.all
    erb :index
  end

  run! if app_file == $0
end
