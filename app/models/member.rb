class Member < ApplicationRecord
  belongs_to :company
  mount_uploader :image, ImagesUploader
end
