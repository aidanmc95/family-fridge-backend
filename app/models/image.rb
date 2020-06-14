class Image < ApplicationRecord
  belongs_to :user
  belongs_to :fridge
  has_many :comments
end
