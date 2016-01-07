class Comment < ActiveRecord::Base
	belongs_to 	:user
	has_many 		:replies
	has_many		:comment_likes
end
