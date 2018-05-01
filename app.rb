require 'sinatra'
require "sinatra/reloader" if development?

load File.dirname(__FILE__) + '/model_results.rb'

get '/' do
   @model_res = @@models.sort_by { |k| k[:score] }.reverse
  erb :index
end

get '/plots' do
  erb :plots
end

get '/steps_taken' do
  redirect '/steps_taken.html'
end