class Page < ActiveRecord::Base
  attr_accessible :image
  belongs_to :book
  mount_uploader :image, ImageUploader
end
