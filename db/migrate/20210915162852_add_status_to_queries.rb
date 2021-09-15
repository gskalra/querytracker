class AddStatusToQueries < ActiveRecord::Migration[6.1]
  def change
    add_column :queries, :status, :string
  end
end
