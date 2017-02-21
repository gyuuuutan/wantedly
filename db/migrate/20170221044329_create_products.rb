class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :company_id, null: false, foreign_key: true
      t.string :title, null: false
      t.string :image

      t.timestamps
    end
  end
end
