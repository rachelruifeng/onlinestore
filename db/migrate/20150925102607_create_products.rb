class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productID
      t.integer :category_id
      t.string :productName
      t.integer :price

      t.timestamps null: false
    end
  end
end
