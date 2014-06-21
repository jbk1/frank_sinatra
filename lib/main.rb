require 'sinatra'
require 'sassbundle'

set :views, Proc.new {File.join(root, '..', "views")}
# set :public, Proc.new {File.join(root, '..', "public")} is this needed???
set :public_folder, 'public'

not_found do
  erb :not_found
end

get '/' do
	@title = "Songds by Sinatra - Home"
  erb :home
end

get '/about' do
	@title = "All About This Website"
  erb :about
end

get '/contact' do
	@title = "Contcat us"
  erb :contact
end










