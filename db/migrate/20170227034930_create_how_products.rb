class CreateHowProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :how_products do |t|
      t.integer :product_id, null: false, foreign_key: true
      t.text :how1, null: false
      t.text :how2
      t.text :how3
      t.string :image1
      t.string :image2
      t.timestamps
    end
  end
end
