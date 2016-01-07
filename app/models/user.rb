class User < ActiveRecord::Base
	has_many :posts
	has_many :favorites
	has_many :comments
	has_many :comment_likes
	has_many :interests
end
