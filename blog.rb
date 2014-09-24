require 'sinatra'
require 'date'
require 'time'

class MyBlog < Sinatra::Base
  get "/" do
    erb :index
  end

end
