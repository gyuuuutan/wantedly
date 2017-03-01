class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :company_id, null: false, foreign_key: true
      t.string :title, null: false
      t.string :image
      t.string :job_type, null: false
      t.string :application_form, null: false
      t.string :region, null: false
      t.timestamps
    end
  end
end
