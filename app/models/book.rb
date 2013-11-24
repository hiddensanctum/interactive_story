class Book < ActiveRecord::Base
  has_many :pages, dependent: :destroy
  mount_uploader :image, ImageUploader
end
