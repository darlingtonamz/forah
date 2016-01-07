class CreateVotes < ActiveRecord::Migration
  def change
    create_table 		:votes do |t|
    	t.references 	:post, index: true, 
      				 			foreign_key: true 
			t.boolean 		:vote_up
			t.timestamps null: false
    end
  end
end
