require_relative '../models/album.rb'

get '/albums' do
  @albums = Album.all()
  erb(:index)
end

get '/albums/new' do
  erb(:new)
end