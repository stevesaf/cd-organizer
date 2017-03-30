require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require "./lib/cd"
require "pry"


get ('/') do
  @list = CD.all()
  erb(:index)
end

post ('/cds') do
  title = params.fetch("title")
  cd = CD.new(title)
  cd.save()
  erb(:success)
end
