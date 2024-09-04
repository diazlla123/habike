class AddBuyerId < ActiveRecord::Migration[7.1]
  def change
    add_column :purchases, :buyer_id, :integer
  end
end
