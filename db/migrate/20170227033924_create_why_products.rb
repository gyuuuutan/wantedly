class CreateWhyProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :why_products do |t|
      t.integer :product_id, null: false, foreign_key: true
      t.text :why1, null: false
      t.text :why2
      t.text :why3
      t.string :image1
      t.string :image2
      t.timestamps
    end
  end
end
