class Favorite < ActiveRecord::Base
	belongs_to :post
	belongs_to :user

	after_create :addFavorite
	after_destroy :removeFavorite

	private
	 def addFavorite
	    Post.find(self.post_id).increment(:favorite_count).save
	 end

	 def removeFavorite
	    Post.find(self.post_id).decrement(:favorite_count).save
	 end
end
