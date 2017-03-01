class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.integer :company_id, null: false, foreign_key: true
      t.string :name, null: false
      t.string :image
      t.string :position
      t.text :profile
      t.timestamps
    end
  end
end
