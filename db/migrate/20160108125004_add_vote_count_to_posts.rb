class AddVoteCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :vote_count, :integer
    add_column :posts, :favorite_count, :integer
  end
end
