class Vote < ActiveRecord::Base
	belongs_to :post

	after_create :addVote
	after_destroy :removeVote

	private
	 def addVote
	    Post.find(self.post_id).increment(:vote_count).save
	 end

	 def removeVote
	    Post.find(self.post_id).decrement(:vote_count).save
	 end

end
