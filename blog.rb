require 'sinatra'
require './lib/post'
require 'date'
require 'time'

class MyBlog < Sinatra::Base
  before do
    #You can put assignments here to apply to all route handlers
  end
  # route handles is where you'd need to do your logic and variable assignments
  # simple logic, no object orientation, no intense logic
  get "/" do
    @post = Post.all
    erb :index
  end

  get "/posts/:blog_post" do
    erb :"posts/#{params[:blog_post]}"
  end

  get "/about-me" do
    erb :about_me
  end

end
