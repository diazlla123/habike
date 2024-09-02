class CreateChats < ActiveRecord::Migration[7.1]
  def change
    create_table :chats do |t|
      t.text :message
      t.references :users, null: false, foreign_key: true
      t.references :offers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
