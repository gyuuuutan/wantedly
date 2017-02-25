class AddLogoAndAddressToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :logo, :string
    add_column :companies, :address, :text, null: false
  end
end
