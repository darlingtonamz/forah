class Post < ActiveRecord::Base
	has_many :votes, dependent: :delete_all
	has_and_belongs_to_many :categories
	belongs_to :user

	#scope :invisible, lambda{ where(:visible => false)}
	scope :sorted, lambda{ order("posts.created_at DESC")}
	scope :top50, lambda{ limit(20)}
end
