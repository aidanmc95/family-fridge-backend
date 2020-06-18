class UserFridge < ApplicationRecord
  belongs_to :user
  belongs_to :fridge

  validates :user, uniqueness: { scope: :fridge }
end
