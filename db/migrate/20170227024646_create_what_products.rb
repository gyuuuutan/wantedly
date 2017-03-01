class CreateWhatProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :what_products do |t|
      t.integer :product_id, null: false, foreign_key: true
      t.text :what1, null: false
      t.text :what2
      t.text :what3
      t.string :image1
      t.string :image2
      t.timestamps
    end
  end
end
