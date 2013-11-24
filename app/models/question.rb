class Question < ActiveRecord::Base
  belongs_to :page
  has_many :answers, dependent: :destroy
  has_many :solutions, dependent: :destroy
  accepts_nested_attributes_for :answers, :allow_destroy => true
end
