require 'rubygems'
require 'sinatra'
require 'json'

set :root, File.dirname(__FILE__)

get '/' do
  erb :index
end

get '/news' do
  content_type :json
  headers["Access-Control-Allow-Origin"] = "*"

  news = NewsDispatcher.get
  news.to_json
end
