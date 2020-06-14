class User < ApplicationRecord
    has_many :comments
    has_many :images
    has_many :user_fridges
    has_many :fridges, through: :user_fridges
end
