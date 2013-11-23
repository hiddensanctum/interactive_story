class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  has_many :solutions, dependent: :destroy
end
