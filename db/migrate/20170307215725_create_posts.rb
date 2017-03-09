class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :description
      t.string :location
      t.decimal :price
      t.integer :rating

      t.timestamps
    end
  end
end
