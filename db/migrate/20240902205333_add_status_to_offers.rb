class AddStatusToOffers < ActiveRecord::Migration[7.1]
  def change
    add_column :offers, :status, :boolean, default: false
  end
end
