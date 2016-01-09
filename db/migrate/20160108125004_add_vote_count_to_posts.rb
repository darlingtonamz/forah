class AddVoteCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :vote_count, 		:integer, default: 0
    add_column :posts, :favorite_count, :integer, default: 0
  end
end
