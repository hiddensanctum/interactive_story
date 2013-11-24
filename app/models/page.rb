class Page < ActiveRecord::Base
  belongs_to :book
  has_many :questions, dependent: :destroy
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :questions, allow_destroy: true
end
