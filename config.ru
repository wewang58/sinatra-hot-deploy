require 'bundler'
require 'rerun'
require 'sinatra'
require 'sinatra/reloader'

Bundler.require :default

class MyApp < Sinatra::Base
  get '/' do
    stream do |out|
      out << "It's gonna be legen -\n"
      sleep 0.5
      out << " (wait for it) \n"
      sleep 1
      out << "- dary!\n"
    end
  end
end

rerun 'run MyApp'
