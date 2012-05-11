require File.dirname(__FILE__) + '/config/boot.rb'
require './app'

map '/' do
  run Sinatra::Application
end

