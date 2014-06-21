require 'sinatra'
require 'sass'
require './lib/song'

# set :views, Proc.new {File.join(root, '..', "views")}
# set :public, Proc.new {File.join(root, '..', "public")} is this needed???
set :public_folder, 'public'

get('/styles.scss'){ scss :styles }


get '/' do
	@title = "Songs by Sinatra - Home"
  erb :home
end

get '/about' do
	@title = "All About This Website"
  erb :about
end

get '/contact' do
	@title = "Contact us"
  erb :contact
end

get '/songs' do
	@songs = Song.all
	erb :songs
end





not_found do
  erb :not_found
end









