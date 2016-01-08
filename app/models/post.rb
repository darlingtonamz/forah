class Post < ActiveRecord::Base
	has_many :votes, dependent: :delete_all
	has_many :favorites, dependent: :delete_all
	has_and_belongs_to_many :categories
	belongs_to :user

	#scope :invisible, lambda{ where(:visible => false)}
	scope :sorted, lambda{ order("posts.created_at DESC")}
	scope :top50, lambda{ limit(20)}
	scope :with_votes, lambda{|id| joins(:votes).where("votes.post_id like "+id.to_s)}
	#scope :with_purchaseable_products, joins(:products).merge(Product.purchaseable).group(:id).having('count(products.id) > 0')
end
