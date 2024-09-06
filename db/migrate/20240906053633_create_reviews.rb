class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.bigint :buyer_id
      t.bigint :seller_id
      t.references :bike, null: false, foreign_key: true
      t.timestamps
    end
  end
end
