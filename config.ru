require 'rubygems'
require 'bundler'

Bundler.require

require './keeper-mile.rb'
run Sinatra::Application
