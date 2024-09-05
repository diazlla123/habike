class AddDefaultStatusToBikes < ActiveRecord::Migration[7.1]
  def change
    change_column_default :bikes, :status, 'available'
  end
end
