class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|
      t.string :model
      t.text :description
      t.integer :kilometers
      t.float :price
      t.string :category

      t.timestamps
    end
  end
end
