require 'dm-core' #main DataMapper gem
require 'dm-migrations' #extra DataMapper functionality extension

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

class Song

  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :lyrics, Text
  property :length, Integer
  property :released_on, Date
end

DataMapper.finalize