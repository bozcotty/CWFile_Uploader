class Thingy < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
