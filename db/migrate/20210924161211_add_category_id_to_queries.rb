class AddCategoryIdToQueries < ActiveRecord::Migration[6.1]
  def change
    add_column :queries, :category_id, :integer
  end
end
