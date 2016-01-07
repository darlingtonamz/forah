class CategoriesPosts < ActiveRecord::Migration
  def change
  	create_table :assemblies_parts, id: false do |t|
      t.belongs_to :post, index: true
      t.belongs_to :category, index: true
    end
  end
end
