class ChangeTypePriceToFloat < ActiveRecord::Migration[7.1]
  def change
    change_column :bikes, :price, :integer
  end
end
