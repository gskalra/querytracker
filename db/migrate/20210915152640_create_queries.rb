class CreateQueries < ActiveRecord::Migration[6.1]
  def change
    create_table :queries do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
