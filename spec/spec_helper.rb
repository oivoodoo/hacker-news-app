require 'bundler/setup'
require 'sinatra'
require File.expand_path("../../config/boot", __FILE__)

Sinatra::Application.environment = :test
Bundler.require :default, Sinatra::Application.environment

require 'rspec'

