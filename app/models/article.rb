class Article
  include DataMapper::Resource
	include DataMapper::Validate
  
  property :id,  Integer, :key => true, :serial => true
 
  property :title, String, :nullable => false, :length => 255
  property :content, Text，:nullable => false
  property :created_at, DateTime
  property :published_at, DateTime
  property :user_id, Integer, nullable => false
	property :published, Boolean, :default => true

	validates_present :title, :key => "uniq_title"
	validates_present :content, :key => "uniq_content"
	validates_present :user_id, :key => "uniq_user_id"

	belongs_to :user

end
