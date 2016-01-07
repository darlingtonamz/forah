class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
    	t.references 	:comment, index: true, 
      				 			foreign_key: true 
    	t.integer 		:response_id 

      t.timestamps null: false
    end
  end
end
