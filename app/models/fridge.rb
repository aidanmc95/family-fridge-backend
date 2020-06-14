class Fridge < ApplicationRecord
    has_many :images
    has_many :user_fridges
    has_many :users, through: :user_fridges
end