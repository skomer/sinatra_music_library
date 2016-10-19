require_relative '../models/album.rb'

get '/albums' do
  @albums = Album.all()
  @artists = Artist.all()
  erb(:'album/index')
end

get '/albums/new' do
  # @artists = Artist.all()
  erb(:'album/new')
end

post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:'album/create')
end

get '/albums/:id' do
  @album = Album.find(params[:id])
  erb(:'album/show')
end