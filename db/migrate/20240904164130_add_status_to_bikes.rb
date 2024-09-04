class AddStatusToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :status, :string
  end
end
