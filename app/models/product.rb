class Product < ApplicationRecord
  belongs_to :company
  has_many :what_products
  has_many :why_products
  has_many :how_products
  accepts_nested_attributes_for :what_products
  accepts_nested_attributes_for :why_products
  accepts_nested_attributes_for :how_products
  mount_uploader :image, ImagesUploader
end
