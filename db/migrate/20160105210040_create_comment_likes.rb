class CreateCommentLikes < ActiveRecord::Migration
  def change
    create_table :comment_likes, id: false do |t|
      t.references 	:user, index: true, 
      				 			foreign_key: true 
    	t.references 	:comment, index: true, 
      				 			foreign_key: true 

      t.timestamps null: false
    end
  end
end
