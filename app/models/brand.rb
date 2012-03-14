class Brand < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
