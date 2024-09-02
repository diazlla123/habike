class AddTwoColBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :model, :string
    add_column :bikes, :description, :text
    add_column :bikes, :kilometers, :integer
    add_column :bikes, :price, :decimal
    add_column :bikes, :category, :string
  end
end
