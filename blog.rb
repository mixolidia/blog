require 'sinatra'
require 'date'
require 'time'

class MyBlog < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/posts/:blog_post" do
    erb :"posts/#{params[:blog_post]}"
  end

  get "/about-me" do
    erb :about_me
  end

end
