class Comment < ActiveRecord::Base
	belongs_to :article
	attr_accessible :name, :email, :body, :article_id
	
	validates_presence_of :name, :email, :body
end
