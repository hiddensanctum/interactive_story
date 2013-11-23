class Book < ActiveRecord::Base
  has_many :pages
  mount_uploader :image, ImageUploader
end
