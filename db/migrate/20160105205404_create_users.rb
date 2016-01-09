class CreateUsers < ActiveRecord::Migration
  def change
    create_table 	:users do |t|
    	t.string   	:name
      t.integer		:like_score, default: 0
      t.integer		:favorite_score, default: 0
      t.timestamps null: false
    end
  end
end
