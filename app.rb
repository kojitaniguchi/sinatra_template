require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if

require './models/model.rb'

get '/' do
  Model.create({
    body: 'hogehoge',
    age: 12,
    })

  @model = Model.first

 erb :index
end

get '/update' do
   @model = Model.first
   @model.update({
     body: 'piyopiyo',
     age: 100,
     })
   @model = Model.first

   erb :index
end

get '/delete' do
   Model.first.destroy
   @model = Model.first

   erb :index
end
